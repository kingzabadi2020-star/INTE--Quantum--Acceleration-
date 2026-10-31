import Types "../types";

mixin (info : Types.CrossChainLedgerInfo) {
  // The cross-chain DeFi ledger record: the chains it spans, the node
  // canisters that serve them, the owner's Plug profiles, and the
  // approval rule that governs it. Powered by Rah'Elionyxx.Inc™.
  public query func getCrossChainLedgerInfo() : async Types.CrossChainLedgerInfo {
    info;
  };
};
