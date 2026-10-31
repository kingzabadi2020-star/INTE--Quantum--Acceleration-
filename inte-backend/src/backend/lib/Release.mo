import Types "../types";

module {
  // Release parameters for the Plug wallet integration deployment.
  // The 3000% installment parameter is the owner's framework figure
  // (the same 3000% payout parameter used across his portfolio model);
  // the release status states plainly that this is a concept framework,
  // not a registered securities offering.
  public let info : Types.ReleaseInfo = {
    name = "Quantum IPO Installments";
    kind = "IPO release (concept framework)";
    payoutPercent = 3000;
    releaseStatus = "CONCEPT — owner-provided framework, not a registered securities offering";
    copyright = "© OBSOFTWARE@COPYRIGHT.ITC";
    architect = "Octavious Blackmon";
    plugProfiles = [
      "maine256 (plugwallet.ooo/users/maine256)",
      "kingzabadi2020 (plugwallet.ooo/users/kingzabadi2020)",
    ];
    network = "Internet Computer (ic)";
  };

  // The integration API surface, as prepared for the deployment.
  public let manifest : [Types.ApiEndpoint] = [
    {
      surface = "inte_backend";
      method = "getClearingLedgerStatus";
      purpose = "Clearing ledger parameters and status for the Plug console";
    },
    {
      surface = "inte_backend";
      method = "calculateYield / defaultYield";
      purpose = "Clearing fee and dividend projections";
    },
    {
      surface = "inte_backend";
      method = "getReleaseInfo";
      purpose = "IPO release (concept) parameters for the deployment";
    },
    {
      surface = "inte_backend";
      method = "getTopUpSchedule / getProfileTopUps";
      purpose = "Owner's New Balance top-up schedule (250 values) applied to both Plug profiles — model figures, not wallet balances";
    },
    {
      surface = "inte_backend";
      method = "getCreditProtocol";
      purpose = "The credit-approval protocol: the agent prepares Plug credits, only the owner approves them";
    },
    {
      surface = "Private Terminal";
      method = "Credit Console (approve / reject)";
      purpose = "Owner approval gate for agent-prepared Plug credits — nothing applies without the owner's approval";
    },
    {
      surface = "inte_btc";
      method = "getIntegrationInfo";
      purpose = "Bitcoin integration record for all departments (ckBTC path), serving both Plug profiles under the owner's approval rule";
    },
    {
      surface = "inte_eth";
      method = "getIntegrationInfo";
      purpose = "Ethereum integration record for all departments (ckETH + EVM RPC path), serving both Plug profiles under the owner's approval rule";
    },
    {
      surface = "inte_sol";
      method = "getIntegrationInfo";
      purpose = "Solana integration record for all departments (threshold Schnorr path, design-level staging — no live bridge claimed), serving both Plug profiles under the owner's approval rule";
    },
    {
      surface = "inte_xledger";
      method = "getCrossChainLedgerInfo";
      purpose = "Cross-chain DeFi ledger record for all departments (Powered by Rah'Elionyxx.Inc™) — the unified ledger layer spanning inte_btc (ckBTC path), inte_eth (ckETH + EVM RPC path), inte_sol (threshold Schnorr path), and the ICP ledgers, serving both Plug profiles under the owner's approval rule; read-core, holds and moves no assets";
    },
    {
      surface = "inte_backend";
      method = "getAfterDripSchedule / getPrincipalIncreaseSchedule";
      purpose = "Owner's After DRIP Value schedule (250 values) and Principal Increase schedule (250 values; first 43 are the Sovereign Share Registry dividend payouts) — model figures";
    },
    {
      surface = "inte_nft";
      method = "icrc7_collection_name / icrc7_symbol / icrc7_total_supply";
      purpose = "NFT collection identity";
    },
    {
      surface = "inte_nft";
      method = "icrc7_token_metadata / icrc7_owner_of / icrc7_balance_of";
      purpose = "NFT ownership and metadata reads for wallet display";
    },
    {
      surface = "Mecca site / INTE Universe Hub";
      method = "Plug connect (window.ic.plug)";
      purpose = "Visitor-side Plug wallet connection; signing stays in the user's own Plug extension";
    },
  ];
};
