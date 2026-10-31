#!/usr/bin/env bash
# ================================================================================
#   OBSOFTWARE@COPYRIGHT.ITC — INTE BACKEND (CLEARING LEDGER) MAINNET DEPLOYMENT
# ================================================================================
# Corrected protocol. This replaces the Gemini "V3 Beta" script, which named
# canisters that did not exist, used dfx's `default` identity, and hardcoded
# an admin principal that is NOT the owner's.
#
# Real conditions enforced here:
#   - Identity: mecca-deployer (the owner's deploy identity; it becomes the
#     canister's controller).
#   - The script stops at the first failed step. Success is printed only
#     after the on-chain verification calls return.
#   - DO NOT RUN until cycles are funded AND the owner gives the deploy word.
set -euo pipefail

NETWORK="ic"
IDENTITY="mecca-deployer"
PW="$HOME/.config/icp-identity/pw"
PROJECT="$HOME/workspace/inte-backend"

echo "[1/4] Checking deployer identity and cycles balance..."
icp cycles balance -n "$NETWORK" --identity "$IDENTITY" --identity-password-file "$PW"

echo "[2/4] Verifying the built wasm is present..."
test -f "$PROJECT/src/backend/dist/inte-backend.wasm"

echo "[3/4] Deploying inte_backend to mainnet (controller: $IDENTITY)..."
cd "$PROJECT"
icp deploy -e "$NETWORK" --identity "$IDENTITY" --identity-password-file "$PW"

echo "[4/4] Verifying the live canister..."
icp canister call inte_backend getClearingLedgerStatus -e "$NETWORK"
icp canister call inte_backend defaultYield -e "$NETWORK"

echo "================================================================================"
echo "  INTE BACKEND LIVE — clearing ledger status verified on mainnet"
echo "================================================================================"
