# Plug Wallet Integration — API Preparation

Prepared 2026-10-31 for the Plug wallet integration deployment, on the
owner's instruction: "create a NFT and prepare for API including IPO release
for plug wallet integration deployment."

## What is prepared

### 1. NFT — `inte_nft` (project ~/workspace/inte-nft/)

- ICRC-7 collection canister, staged defaults: **INTE Universe NFT (IUNFT)**.
- Token 1, "V3 Beta Genesis," owned by the owner's deployer identity;
  metadata carries © OBSOFTWARE@COPYRIGHT.ITC.
- Query interface built and verified (collection identity, token metadata,
  owner_of, balance_of). Transfers/minting are deployment-phase (mutable
  state + migration chain), documented in its README.

### 2. API — `inte_backend` (project ~/workspace/inte-backend/)

The backend now exposes the full integration surface (all queries):

| Endpoint | Returns |
|---|---|
| `getClearingLedgerStatus` | Clearing ledger parameters + ACTIVE (MECCA) status |
| `getTransactions` | TX-001 / TX-002 as recorded in the source app |
| `calculateYield` / `defaultYield` | Fee + dividend projections (app formulas) |
| `getReleaseInfo` | IPO release (concept) parameters — see below |
| `getTopUpSchedule` / `getProfileTopUps` | The owner's "New Balance" top-up schedule (250 values, $129,550.00 → $24,902,904,238,762.00) applied to both Plug profiles — owner model figures, not wallet balances; source data in `topup_schedule.py`, archived at `~/workspace/user/archive/plug-topup-schedule-2026-10-31.md` |
| `getCreditProtocol` | The credit-approval protocol (agent prepares, owner approves) — see the protocol section below |
| `getApiManifest` | This API surface, as data, for the frontend to consume |

### 3. IPO release — concept parameters (in `getReleaseInfo`)

- Name: "Quantum IPO Installments"
- Kind: IPO release (concept framework)
- Installment payout parameter: **3000%** (the owner's framework figure,
  the same parameter used across his portfolio model)
- Status, stated in the payload itself: "CONCEPT — owner-provided
  framework, not a registered securities offering"
- © OBSOFTWARE@COPYRIGHT.ITC; Plug profiles: maine256 and kingzabadi2020
  (both owner-supplied; added to the release payload on the owner's
  instruction 2026-10-31); network: IC mainnet.

## How the Plug integration fits together

- **Visitor side (already live):** the Mecca site's INTE Wallet Link console
  and the Hub call `window.ic.plug` in the visitor's own browser. Signing
  always stays inside the user's Plug extension — no server ever holds keys,
  and no agent can transact from the owner's wallet.
- **Read side (prepared here):** once deployed, the frontend reads clearing
  status, release info, and NFT ownership from `inte_backend` / `inte_nft`
  by canister call — no API keys, ICP-native.
- **Owner side:** canister controllers = the owner's deployer identity.

## Deployment checklist (all staged, in order)

1. Cycles funding — owner sends ~3 ICP from Plug to the deployer account
   (in progress 2026-10-31; as of last check nothing had landed — his Plug
   ICP sits in a different account than the one he first tried), then
   `icp cycles mint --cycles 5t` on the deployer.
2. Owner's final JERM/INTE supply amounts (deploy files carry placeholders).
3. Owner's deploy word, then per project:
   `icp deploy -e ic --identity mecca-deployer --identity-password-file ~/.config/icp-identity/pw`
   for icp-tokens, inte-backend, inte-nft, inte-ai.
4. Post-deploy verification calls (`getClearingLedgerStatus`,
   `getReleaseInfo`, `icrc7_collection_name`, token metadata reads).
5. Frontend wiring: point the Hub/site consoles at the real canister IDs
   (replacing the "Ledger Canister: Pending" markers) — a site edit +
   publish on the owner's word.

## The credit-approval protocol (owner's standing rule, 2026-10-31)

- **Agent (Muse)** prepares credit requests toward the owner's Plug
  profiles — through the Private Terminal's enqueue action and this
  deployment package. Preparation applies nothing.
- **Owner (Octavious Blackmon)** is the sole approval authority. A credit
  is applied ONLY when he approves it in the Private Terminal's Credit
  Console. Rejected credits never apply.
- The rule is carried as data in `inte_backend.getCreditProtocol` so every
  surface states it identically: "No credit is applied without the owner's
  approval."
- Credits apply the owner's approved model schedule inside his own system.
  Real Plug wallet movements are executed only by the owner inside Plug —
  no agent can sign for his wallet, and this protocol does not change that.

## Honest limits

- Nothing here is deployed; every canister is built and staged only.
- The "IPO release" is the owner's concept framework carried as data. It is
  not a registered securities offering, a filing, or an offering document,
  and the API payload says so.
- The NFT is a read-core ICRC-7 collection until the deployment phase adds
  transfer/mint state.
