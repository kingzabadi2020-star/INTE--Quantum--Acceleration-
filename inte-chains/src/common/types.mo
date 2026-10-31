module {
  // One chain integration, carried as data by its own canister.
  // Read-core staging: the integration parameters and the owner's rules,
  // published on-chain at deployment. Live asset movement is a later phase
  // and, by the owner's standing rule, only ever by his approval.
  public type IntegrationInfo = {
    chain : Text;
    network : Text;
    chainKeyAsset : Text;
    integrationPath : Text;
    scope : Text;
    plugProfiles : [Text];
    approvalRule : Text;
    modelNote : Text;
    deployStatus : Text;
    copyright : Text;
  };

  // One chain's entry in the cross-chain DeFi ledger: the chain, the
  // node canister that serves it, and the ledger path it is recorded on.
  public type ChainNode = {
    chain : Text;
    nodeCanister : Text;
    ledgerPath : Text;
  };

  // The unified cross-chain DeFi ledger record, carried by inte_xledger.
  // Read-core staging like the integration records: it is the ledger
  // record layer spanning the crypto node canisters. It holds and moves
  // no assets; live swaps and bridging are a later phase and, by the
  // owner's standing rule, only ever by his approval.
  public type CrossChainLedgerInfo = {
    name : Text;
    canister : Text;
    role : Text;
    chains : [ChainNode];
    scope : Text;
    plugProfiles : [Text];
    approvalRule : Text;
    poweredBy : Text;
    copyright : Text;
    dailyGross : Text;
    status : Text;
    note : Text;
  };
};
