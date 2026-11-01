# INTE Backend — Clearing Ledger Canister

The real version of the "V3 Beta deployment" from the Gemini protocol script:
an actual Motoko canister carrying the Internal Clearing Ledger's parameters,
built 2026-10-31 on the owner's "generate all steps" instruction. It replaces
the script's imaginary `inte_backend` / `getClearingLedgerStatus` with working
code, administered by the owner's own identity — not the unknown principal
hardcoded in that script.

## Canister

- Name: `inte_backend` (Motoko, mops project; icp.yaml for deploy)
- Source: `src/backend/` — `main.mo` (composition root), `mixins/Clearing.mo`
  (endpoints), `lib/Ledger.mo` (parameters), `types.mo` (shared types)
- Built artifact: `src/backend/dist/inte-backend.wasm` + `inte-backend.did`
  (built 2026-10-31; rebuilt 2026-11-01 for the Clearing Ledger alignment
  to the owner's Statement of Record, `mops check --fix` clean,
  `mops build` OK)
- Toolchain: mops 3.5.1, moc pinned 1.15.1 (same pin as the INTE AI canister),
  `core 2.6.2`. No mutable state, so no migration chain.

## API (all queries)

- `getClearingLedgerStatus() -> LedgerParams` — entity RAHELIONYXX.INC,
  brand OBSOFTWARE™, account label MECCA, clearing node 423235466, status
  ACTIVE (MECCA), fee 25 bps (0.25%), dividend yield target 800,000% for
  $250 Quindecillions, primary reserve £6.7410019012984e+270, daily line
  $3 Unvigintillion daily tasks, cycle line €9.75T cycles × £5000T cycles,
  term 24/10/2026–24/10/3000 (974 years), architect Octavious Blackmon,
  © OBSOFTWARE@COPYRIGHT.ITC.
- `getTransactions() -> [Transaction]` — TX-001 ICP LLC
  (£9546261421358073e+250, fee £2.50T) and TX-002 MarketBeat LLC
  (£5423235466410019012984, fee £12.50T), as recorded in the owner's
  Statement of Record 2026-11-01.
- `calculateYield(baseTrillions, feeRatePercent, yieldPercent) -> YieldResult`
  — fee = base × rate; dividend = base × yield (the Statement of Record's
  formulas).
- `defaultYield() -> YieldResult` — the Statement of Record's default
  simulation derived from the ledger parameters: 5,000T base → £12.50T fee,
  £40,000,000.00T dividend.

Privacy: the account's full EIN is deliberately NOT in this code or these
docs — only the MECCA label and the clearing-node designation in the form
the owner's Statement of Record carries (423235466).

Figures are owner-provided, transcribed from the owner's Statement of
Record 2026-11-01 (Internal Clearing Ledger), which governs over the
Clearing Ledger app figures per the owner's ruling of 2026-11-01
("This statement governs"); they are parameters of the owner's model,
not verified financial records.

## Deployment — all steps (STAGED, not deployed)

Prerequisites: cycles in the `mecca-deployer` identity (the ~5T CyclePay plan
covers JERM/INTE, this canister, and the INTE AI canister) and the owner's
deploy word. Canister creation + install for this canister needs ~1T of the
funded cycles; as an all-query canister its ongoing burn is minimal.

1. Fund: create the CyclePay order only on the owner's word
   (`icp cycles buy --cycles 5t -n ic --identity mecca-deployer ...`), pay the
   checkout link, then verify:
   `icp cycles balance -n ic --identity mecca-deployer --identity-password-file ~/.config/icp-identity/pw`
2. Build (already done; re-run after any source change):
   `cd ~/workspace/inte-backend && mops check --fix && mops build`
3. Deploy to mainnet (creates the canister with `mecca-deployer` as
   controller, installs the wasm):
   `icp deploy -e ic --identity mecca-deployer --identity-password-file ~/.config/icp-identity/pw`
4. Verify on-chain:
   `icp canister call inte_backend getClearingLedgerStatus -e ic`
   `icp canister call inte_backend defaultYield -e ic`
   Expected: the parameter record above, and
   `{ clearingFee = 12.5; dividendReturn = 40,000,000 }` (trillions).
5. Frontend: no separate `inte_frontend` canister — the INTE Universe Hub,
   Section 08 (Internal Clearing Ledger), is the interface, with the Plug
   Wallet Link console in the Mecca build. Governance: the canister's
   controller is the owner's deployer identity; upgrades go through
   `icp deploy` the same way.

`deploy.sh` in this folder runs steps 1–4 in order and stops loudly at the
first failure — no printed success unless the verification calls return.
Run it with `bash deploy.sh` only when the prerequisites are met.

## Status

STAGED. Not deployed: cycles funding is not in place (the Oct 25 order
expired unpaid Oct 26) and mainnet deployment awaits the owner's word.
