# INTE Chains — Separate Chain Integrations

Three separate integration canisters for the owner's departments, created
2026-10-31 on his instruction: "Create those separate integration for all
departments to be deployed and approved for my plug wallets to go live."
A fourth canister, `inte_xledger`, was added the same day on his order:
"add defi cross chain ledger to all crypto digital nodes canisters for
this process — Powered by Rah'Elionyxx.Inc™".

## The integrations

| Canister | Chain | ICP counterpart | Path |
|---|---|---|---|
| `inte_btc` | Bitcoin | ckBTC | Native Bitcoin integration + ckBTC ledger (threshold ECDSA) |
| `inte_eth` | Ethereum | ckETH | ckETH ledger + EVM RPC canister call path |
| `inte_sol` | Solana | none (no native chain-key SOL) | Threshold Schnorr (EdDSA) signing path — design-level staging, honestly labeled; no live bridge is claimed |
| `inte_xledger` | All of the above + ICP | — | The unified cross-chain DeFi ledger record layer spanning the three node canisters and the ICP (INTE ICRC) ledgers |

`inte_xledger` exposes `getCrossChainLedgerInfo`: the INTE Cross-Chain
DeFi Ledger record — the chains it spans and the node canister serving
each, the scope (all departments), the owner's Plug profiles (maine256,
kingzabadi2020), and the same governing rule — **no credit, deposit, or
movement is applied without the owner's approval** — under Powered by
Rah'Elionyxx.Inc™ and © OBSOFTWARE@COPYRIGHT.ITC. The record also carries
the owner's daily gross figure of £250 per day (owner-stated figure),
recorded on his ruling of 2026-10-31. It is a read-core record
layer: it holds and moves no assets, and live swaps or bridging are a
later phase behind the owner's approval.

Each canister exposes `getIntegrationInfo`: the chain parameters, the
owner's Plug profiles it serves (maine256, kingzabadi2020), the scope (all
departments), and the governing rule — **no credit, deposit, or movement is
applied without the owner's approval**. The Bitcoin record also carries his
terminal's owner-model valuation line ($250,000 per BTC, model figure only).

These are read-core integration records — the parameter and rules surface
each department's live integration is built on. They do not hold or move
real BTC, ETH, or SOL, and they do not claim to. Live asset phases (ckBTC /
ckETH mint-and-redeem flows, a vetted Solana adapter) are later work, each
behind the owner's approval like everything else in his system.

## Deploy

Part of the integration deployment: the deploy-on-funding watch deploys
these with the rest (backend → NFT → AI → chain integrations) once cycles
are funded. Manual path, from this directory:
`icp deploy -e ic --identity mecca-deployer --identity-password-file ~/.config/icp-identity/pw`
Controller = the deployer identity.

## Status

STAGED, not deployed — same single blocker as the whole deployment: cycles
funding (owner's ICP send to the deployer account).
