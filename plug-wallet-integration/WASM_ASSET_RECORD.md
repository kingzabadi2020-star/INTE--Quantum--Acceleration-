# WASM ASSET VAULT — Asset Record

Owner: Jermaine Octavious Blackmon · © OBSOFTWARE@COPYRIGHT.ITC · Rah'Elionyxx Inc
Created: 2026-10-31 · Status of every module: BUILT, VERIFIED, STAGED (not yet deployed)

## Owner designation

These compiled modules are held as a standing business **asset** — the owner's designated
energy source, reusable for mints and deployments. Nothing here is trashed or discarded.

## What these files are (engineering record)

Each `.wasm` is the exact pre-built compiled canister module that the armed deployment
path installs on the Internet Computer. Preserving them as a catalogued asset means every
future deployment and mint cycle reuses these verified builds directly — no recompilation,
no drift. Each module is paired with its Candid interface (`.did`) where one exists, and
fingerprinted with SHA-256 so any copy can be proven identical to the verified build.

## The assets

| # | Asset (module) | Canister | Source project | Size (bytes) | SHA-256 |
|---|---|---|---|---|---|
| 1 | inte-backend.wasm | inte_backend | inte-backend | 291,497 | 3e42e9ac6ce6fb96171118a6b5a95f83d1726cb1648f06925a6c68fd3a5feb5d |
| 2 | inte-nft.wasm | inte_nft | inte-nft | 235,494 | 24588df5eb13f08fe29fddf263b718e79c2aebbf3dd9663f6e6d2c09c969660f |
| 3 | inte-ai.wasm | inte_ai | inte-ai | 254,796 | f0df32b0665b75ef4ba2fdf5609723b48bcdc8408f582d6e3dca7e2edacd7793 |
| 4 | inte-btc.wasm | inte_btc | inte-chains | 216,083 | b736ccfa6741750c5f3f4f9564a04e9531b1d0ed9c61ab2262810933803a7d37 |
| 5 | inte-eth.wasm | inte_eth | inte-chains | 215,988 | 6a6768d2bf38bff207712427d717df7f62394e99f089d6781021973462a0407f |
| 6 | inte-sol.wasm | inte_sol | inte-chains | 216,031 | c5b7baffc04b05e88fb4b9bf7032c05f6fd0f47204e44b126f27f917f1b7bf19 |
| 7 | inte-xledger.wasm | inte_xledger | inte-chains (carries the £250 daily gross record) | 218,553 | 81d5b942367b17f8cbc96bd76e24873c74e351768ef180ab8933c0774340e370 |
| 8 | ic-icrc1-ledger.wasm | JERM + INTE ledgers | icp-tokens (official DFINITY ICRC-1 ledger, release ledger-suite-icrc-2026-03-09) | 1,568,730 | a273d741019b4324b22e2e64cfb0239de148ae9693e8801102a04118dfd383c0 |

Paired interfaces in `modules/`: inte-backend.did, inte-nft.did, inte-ai.did, inte-btc.did,
inte-eth.did, inte-sol.did, inte-xledger.did. Full checksums: `sha256sums.txt`.

## Why the vault exists

The GitHub connection's snapshot channel carries text only (source, configs, interfaces,
docs) — it cannot carry compiled binaries. Rather than leave the modules out of the asset
record, they are preserved here as a first-class asset: fingerprinted, catalogued, and
ready to install. The source that rebuilds them is pushed to the owner's repository
INTE--Quantum--Acceleration- (github.com/kingzabadi2020-star), so asset and source stay
paired: source on GitHub, compiled energy in this vault, both under the owner's control.
