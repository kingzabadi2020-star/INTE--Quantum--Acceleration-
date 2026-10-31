# Mecca Tokens — JERM + INTE (ICRC-1)

Real ICRC-1 token ledgers for deployment on the Internet Computer mainnet.

## Tokens

| Ticker | Name | Brand mark | Decimals | Total supply (placeholder) |
|--------|------|------------|----------|---------------------------|
| JERM | Jermaine Octavious Blackmon | 🐦‍🔥 | 8 | 1,000,000,000 (user to finalize) |
| INTE | Interstellar Department of Transportation | 🕋 | 8 | 1,000,000,000 (user to finalize) |

- Transfer fee: 0.0001 tokens (10,000 base units) on both ledgers.
- ICRC-2 (approve/transferFrom) enabled on both.
- Ledger WASM: official DFINITY ICRC-1 ledger, release `ledger-suite-icrc-2026-03-09` (local copy in `wasm/`).

## Identities

- `mecca-deployer` — receives the initial supply; pays for deployment. Principal: `ssrfp-cwoy3-zlzm4-eywp7-nao7y-qhgau-f75jn-ucv7e-7f7vs-aj6uv-uqe`
- `mecca-minter` — minting account (must differ from supply recipient). Principal: `ryfym-wo2hm-tozph-44yao-ha5ro-v7uwy-p7nqk-2wyk5-svfle-wrbdp-yae`

Seed phrases are backed up at `~/.config/icp-identity/seed-phrase` and `seed-phrase-minter` (600 permissions). The identity password is at `~/.config/icp-identity/pw`.

## Before mainnet deploy

1. **Finalize amounts** — edit `initial_balances` in `jerm_ledger_init.args` and `inte_ledger_init.args`. Amounts are in base units (supply × 10^8).
2. **Fund cycles** — the deployer identity needs cycles. Buy via CyclePay card gateway (`icp cycles buy`) or transfer ICP → mint cycles.

## Deploy (mainnet)

```bash
cd ~/workspace/icp-tokens
icp deploy -e ic --identity mecca-deployer --identity-password-file ~/.config/icp-identity/pw
```

## Files

- `icp.yaml` — project config (two pre-built ledger canisters)
- `jerm_ledger_init.args` / `inte_ledger_init.args` — ledger init args (Candid)
- `wasm/ic-icrc1-ledger.wasm` — official ledger WASM
