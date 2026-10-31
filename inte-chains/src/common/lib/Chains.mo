import Types "../types";

module {
  // The three separate chain integrations for the owner's departments,
  // created 2026-10-31 on his instruction. Each is served by its own
  // canister. Figures labeled "owner model" are his model figures.
  let profiles : [Text] = [
    "maine256 (plugwallet.ooo/users/maine256)",
    "kingzabadi2020 (plugwallet.ooo/users/kingzabadi2020)",
  ];
  let rule : Text = "No credit, deposit, or movement is applied without the owner's approval";
  let scope : Text = "All departments of the owner's organization";
  let status : Text = "STAGED — deploys with the integration deployment once cycles are funded; owner deploy word given 2026-10-31";
  let rights : Text = "© OBSOFTWARE@COPYRIGHT.ITC";

  public let bitcoin : Types.IntegrationInfo = {
    chain = "Bitcoin";
    network = "Bitcoin mainnet, integrated with the Internet Computer (chain fusion)";
    chainKeyAsset = "ckBTC — chain-key Bitcoin on the Internet Computer";
    integrationPath = "Native Bitcoin integration: BTC deposits convert to ckBTC under threshold ECDSA, held and moved on ICP at Bitcoin-backed 1:1 parity. This canister is the department's Bitcoin integration record and parameter surface.";
    scope = scope;
    plugProfiles = profiles;
    approvalRule = rule;
    modelNote = "Owner model valuation carried in his Private Terminal: $250,000 per BTC — an owner model figure, not a market price.";
    deployStatus = status;
    copyright = rights;
  };

  public let ethereum : Types.IntegrationInfo = {
    chain = "Ethereum";
    network = "Ethereum mainnet, integrated with the Internet Computer (chain fusion)";
    chainKeyAsset = "ckETH — chain-key Ethereum on the Internet Computer";
    integrationPath = "ckETH ledger for the chain-key counterpart, with the EVM RPC canister as the call path to Ethereum and EVM networks. This canister is the department's Ethereum integration record and parameter surface.";
    scope = scope;
    plugProfiles = profiles;
    approvalRule = rule;
    modelNote = "No owner model valuation set for ETH.";
    deployStatus = status;
    copyright = rights;
  };

  // The unified cross-chain DeFi ledger, ordered by the owner 2026-10-31:
  // "add defi cross chain ledger to all crypto digital nodes canisters
  // for this process — Powered by Rah'Elionyxx.Inc™". Served by its own
  // canister, inte_xledger, spanning the three node canisters above and
  // the ICP ledgers.
  public let crossChainLedger : Types.CrossChainLedgerInfo = {
    name = "INTE Cross-Chain DeFi Ledger";
    canister = "inte_xledger";
    role = "The unified cross-chain DeFi ledger record layer spanning the owner's crypto node canisters (inte_btc, inte_eth, inte_sol) and the ICP ledgers — one ledger record surface for every chain the departments operate on.";
    chains = [
      {
        chain = "Internet Computer (ICP)";
        nodeCanister = "INTE ICRC ledgers (JERM / INTE), records via inte_backend";
        ledgerPath = "Native ICRC-1 / ICRC-2 ledgers on ICP; clearing and release records served by inte_backend";
      },
      {
        chain = "Bitcoin";
        nodeCanister = "inte_btc";
        ledgerPath = "ckBTC path — native Bitcoin integration under threshold ECDSA";
      },
      {
        chain = "Ethereum";
        nodeCanister = "inte_eth";
        ledgerPath = "ckETH + EVM RPC path — ckETH ledger with the EVM RPC canister as the call path";
      },
      {
        chain = "Solana";
        nodeCanister = "inte_sol";
        ledgerPath = "Threshold Schnorr (EdDSA) path — design-level staging; no live bridge claimed";
      },
    ];
    scope = scope;
    plugProfiles = profiles;
    approvalRule = rule;
    poweredBy = "Rah'Elionyxx.Inc™";
    copyright = rights;
    dailyGross = "£250 per day (owner-stated figure)";
    status = "STAGED — NOT LIVE — deploys with the integration deployment once cycles are funded; owner deploy word given 2026-10-31";
    note = "Read-core record layer: this canister holds and moves no assets. It carries the cross-chain DeFi ledger parameters and the owner's rules. Live swaps and bridging are a later phase, executed only under the owner's approval.";
  };

  public let solana : Types.IntegrationInfo = {
    chain = "Solana";
    network = "Solana mainnet, staged for integration with the Internet Computer";
    chainKeyAsset = "No native chain-key SOL token exists";
    integrationPath = "Solana signs with Ed25519; the Internet Computer path is threshold Schnorr (EdDSA) signing. This integration is staged at design level: the canister carries the department's Solana parameters and rules until a vetted adapter is chosen. It does not claim a live bridge.";
    scope = scope;
    plugProfiles = profiles;
    approvalRule = rule;
    modelNote = "No owner model valuation set for SOL.";
    deployStatus = status;
    copyright = rights;
  };
};
