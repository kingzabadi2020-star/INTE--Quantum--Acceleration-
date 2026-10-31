# INTE NFT — Collection Canister

An ICRC-7 NFT collection for the INTE Universe, created 2026-10-31 as part of
the Plug wallet integration deployment preparation. Staged defaults — the
owner can rename the collection or replace the genesis token before deploy.

## Collection (staged defaults)

- Name: INTE Universe NFT
- Symbol: IUNFT
- Token 1: "V3 Beta Genesis" — genesis NFT of the INTE Universe, owned by the
  owner's deployer identity (the JERM/INTE supply recipient). Metadata
  carries the © OBSOFTWARE@COPYRIGHT.ITC mark and architect credit.

## Interface

Implements the ICRC-7 **query** side: `icrc7_collection_name`,
`icrc7_symbol`, `icrc7_total_supply`, `icrc7_supply_cap`,
`icrc7_max_query_batch_size`, `icrc7_max_update_batch_size`,
`icrc7_default_take_value`, `icrc7_max_take_value`, `icrc7_max_memo_size`,
`icrc7_token_metadata`, `icrc7_owner_of`, `icrc7_balance_of`.
Check clean, wasm + did built 2026-10-31 (`src/backend/dist/`).

**Not yet included:** `icrc7_transfer` and minting updates. They need mutable
ownership state (a mops migration chain), which lands in the deployment phase
when the collection goes live — until then this is a read-core collection,
and it is labeled that way on purpose.

## Deploy

Same pattern as the other canisters: cycles funded → owner deploy word →
`icp deploy -e ic --identity mecca-deployer --identity-password-file ~/.config/icp-identity/pw`
from this directory. Controller = the deployer identity.

## Status

STAGED, not deployed — waiting on cycles funding and the owner's deploy word,
same blockers as JERM/INTE, the INTE AI canister, and inte_backend.
