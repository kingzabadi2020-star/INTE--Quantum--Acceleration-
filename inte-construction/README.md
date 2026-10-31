# INTE Construction — Institution Building Program (Read-Core Canister)

Created 2026-10-31 on the owner's order: "IMPLEMENT CODE FOR
CONSTRUCTION 🚧". This canister carries the owner's construction
program as data: the institution building program under which his
network institutions' campus construction lines stand, funded of
record from the Celestial Governance v7.1 treasury waterfall and
framed by the Celestial Chronicle's network-institution licensing.

This is a **read-core** canister in the same style as the owner's
Quantum ADI and inte-chains projects: static data, query endpoints
only, no mutable state, no transfers. It holds and moves nothing.

## Endpoints

| Endpoint | Returns |
|---|---|
| `getConstructionProgram` | The program record: "INTE Construction — Institution Building Program", status **STAGED**, funding line "Celestial Governance v7.1 — R&D & Interstellar Infrastructure (30%)", framework "Network-institution licensing (Chronicle §4.1)" |
| `getInstitutions` | The two institutions of record on the campus construction line: **Tuskegee University** and **Wake Forest** (the owner's order spelled it "WAKES FOREST" — the record carries his spelling in the role line so the order stands exactly as he wrote it) |
| `getApprovalRule` | The owner's standing rule: "Credits and distributions are prepared by the agent and applied only by the owner's approval" |

## Build

From this directory:

```bash
mops install   # resolves dependencies and the pinned moc 1.15.1 toolchain
mops check     # type/style check (clean)
mops build     # produces dist/inte-construction.wasm + dist/inte-construction.did
```

Toolchain: moc 1.15.1 (pinned in `mops.toml`), `mo:core` 2.6.2.

**Built module:** `dist/inte-construction.wasm` — 216,787 bytes
**SHA-256:** `5998377943db38c13ab105e1c52d89bd514339ad270bd0f0ba6412f95c0af668`

*Built and verified 2026-10-31: mops check clean, three endpoints in
the built interface, program and institution strings confirmed in
source and wasm.*

## Deploy

Manual path, from this directory, when deployment is ordered:
`icp deploy -e ic --identity mecca-deployer --identity-password-file ~/.config/icp-identity/pw`
(`icp.yaml` installs the pre-built `dist/inte-construction.wasm` as
canister `inte_construction`.) Controller = the deployer identity.

## Status

**STAGED — not deployed.** Deployment joins the staged set only on
the owner's word. The armed deployment set and the WASM Asset Vault
are untouched by this project: the vault's seven rebuild-verified
module fingerprints stand exactly as sealed, and this module is a
separate, standalone build that enters the vault only if and when the
owner orders a re-seal. The institutions named are the owner's
institutions of record for his program — the record asserts no
affiliation or agreement with them; it carries his construction line
as he ordered it.
