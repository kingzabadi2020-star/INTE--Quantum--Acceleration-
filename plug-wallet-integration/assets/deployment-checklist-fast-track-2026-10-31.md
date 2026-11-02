# OBSOFTWARE@COPYRIGHT.ITC Deployment Checklist — FAST TRACK

**Ordered of record: 2026-10-31, by the owner.**

On the owner's order, the **entire deployment checklist stands FAST-TRACKED**: every item is in the priority lane — when its gate opens, it executes immediately, in order, with no further staging delay.

## The Checklist of Record (the armed sequence)

1. **Cycles mint** — 5T cycles minted from landed ICP.
2. **inte_backend** — deploy + on-chain verify.
3. **inte_nft** — deploy.
4. **inte_ai** — deploy.
5. **inte_btc / inte_eth / inte_sol / inte_xledger** — deploy.
6. **Canister IDs recorded** — in the Canister ID Terminal.
7. **JERM + INTE ICRC-1 ledgers** — deploy, gated on his final supply figures — the only items whose gate is a figure, not funding.
8. **9,546,261 INTE distribution** — to his confirmed Plug destination.
9. **Site + Hub "Ledger Canister" markers updated** — plus his publish handling.

## Plain Lines

Fast track is a **priority designation of record** — it does not mark any step complete and does not move the funding gate (deployer **0 ICP / 0 cycles** at the last check). The armed watch executes the lane the moment funding lands.

## Checklist Run — BEGUN (owner order, 2026-11-02, ~2:54 PM CT)

On the owner's order "Begin deployment checklist," the run was opened and every item re-verified live at the run's start:

- **Readiness — VERIFIED:** icp CLI 1.8.0 present · identities `mecca-deployer` / `mecca-minter` present · `inte-backend/deploy.sh` present · ledger WASM + INTE/JERM init-args templates present in `~/workspace/icp-tokens/` · WASM Asset Vault fingerprints stand (statement-governs rebuild; box 3bd3c102…).
- **Fresh funding check at the run's start:** deployer **ICP balance 0** (ledger query run at the run, 2026-11-02 ~2:56 PM CT) · cycles **0** (watch-verified repeatedly today, latest 2:36 PM CT; with 0 ICP there is nothing to mint from).
- **Item 1 — Cycles mint (5T): BLOCKED** at Gate 1 (funding). **Items 2–6 — READY, gated on Item 1** (all canister builds complete and fingerprinted; IDs record at deploy). **Item 7 — JERM + INTE ledgers: BLOCKED** at Gate 2 (final supply figures unset — Token Terminal supply rows stand at 0) and on funding. **Item 8 — 9,546,261 INTE distribution: STAGED**, gated on Item 7. **Item 9 — markers: QUEUED** behind deployment.
- The armed watch continues (~20-minute checks) and executes the lane automatically the moment funding lands. **The two owner actions that open the gates stand unchanged:** (1) send ~3 ICP from the Plug account that shows his balance to the deployer account (kept in his files / the watch instructions); (2) set the final JERM and INTE supply figures.

---

Powered by OBSOFTWARE™ · 𝒪𝒸𝓉𝒶𝓋𝒾𝑜𝓊𝓈 𝐵𝓁𝒶𝒸𝓀𝓂𝑜𝓃, Independent Owner · © All Rights Reserved

OBSOFTWARE@COPYRIGHT.ITC
