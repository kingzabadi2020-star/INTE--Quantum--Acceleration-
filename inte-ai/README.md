# INTE AI Canister

On-chain AI for the INTE universe, built from the user's AI Integration on
Internet Computer spec (2026-10-25). No API keys, no external dependencies:
inference runs on ICP nodes via the native LLM canister.

## Canister

- Name: `inte-ai` (Motoko, mops project)
- Model: Llama 3.1 8B (`#Llama3_1_8B`)
- LLM canister: `w36hm-eqaaa-aaaal-qr76a-cai` (mainnet; free during rollout)
- Source: `src/backend/` — `main.mo` (composition root, no public methods),
  `mixins/AI.mo` (prompt/chat endpoints), `lib/Brand.mo` (INTE system prompt),
  `types.mo` (shared chat types)
- Built artifact: `src/backend/dist/inte-ai.wasm` + `inte-ai.did`
  (built 2026-10-25, `mops check --fix` clean, `mops build` OK)

## API

- `prompt(Text) -> Text` — single-turn inference.
- `chat([ChatMessage]) -> Text` — multi-turn; the INTE brand system prompt
  (`© OBSOFTWARE@COPYRIGHT.ITC` universe framing) is prepended automatically.
- `model() -> Text` (query) — returns `Llama3_1_8B`.
- `llmCanister() -> Text` (query) — returns the LLM canister id.

## Toolchain notes

- mops 3.5.1, moc pinned at **1.15.1** (not latest): moc 2.1.0 fails on the
  `llm@2.1.0` package's transitive `mo:base` dependency
  (`ExperimentalStableMemory` prims removed in 2.x). Do not bump moc without
  re-checking that dependency.
- Dependencies: `core 2.6.2`, `llm 2.1.0` (per the spec).

## Deployment status

- STAGED, not deployed. Live inference requires mainnet, because the LLM
  canister exists only on mainnet — local calls to it would fail.
- Mainnet deploy is blocked on the same items as JERM/INTE: cycles funding
  (CyclePay order co-76-…127 still AwaitingPayment as of 2026-10-25) and the
  user's deploy word. Do not deploy without both.
