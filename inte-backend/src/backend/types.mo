module {
  // Shared API types for the INTE clearing-ledger backend canister.
  // Amounts that the source app displays in scientific or named-magnitude
  // form are carried as Text, exactly as displayed, so nothing is rounded
  // or reinterpreted.

  public type LedgerParams = {
    entity : Text;
    brand : Text;
    accountLabel : Text;
    clearingNode : Text;
    clearingStatus : Text;
    feeBasisPoints : Nat; // 25 = 0.25%
    dividendYieldPercent : Nat; // 800000 = 800,000%
    primaryReserve : Text;
    dailyRate : Text;
    termStart : Text;
    termEnd : Text;
    termYears : Nat;
    architect : Text;
    copyright : Text;
  };

  public type Transaction = {
    id : Text;
    date : Text;
    entity : Text;
    amount : Text;
    fee : Text;
  };

  // Yield calculator output, in trillions (same unit as the source app's
  // base amount).
  public type YieldResult = {
    clearingFee : Float;
    dividendReturn : Float;
  };

  // IPO release parameters for the Plug wallet integration deployment.
  // The release is the owner's concept framework; its status text says so
  // in the payload itself.
  public type ReleaseInfo = {
    name : Text;
    kind : Text;
    payoutPercent : Nat;
    releaseStatus : Text;
    copyright : Text;
    architect : Text;
    plugProfiles : [Text];
    network : Text;
  };

  // One entry of the integration API manifest.
  public type ApiEndpoint = {
    surface : Text;
    method : Text;
    purpose : Text;
  };

  // Per-profile summary of the staged top-up schedule. The balances are
  // the owner's model figures, and the status text says so.
  public type ProfileTopUp = {
    profile : Text;
    periods : Nat;
    firstBalance : Text;
    finalBalance : Text;
    status : Text;
  };

  // The credit-approval protocol: the agent prepares Plug credits, and
  // only the owner's approval applies them. Carried as data so every
  // surface in the deployment states the same rule.
  public type CreditProtocol = {
    agentRole : Text;
    approverRole : Text;
    rule : Text;
    creditSurface : Text;
    executionNote : Text;
    copyright : Text;
  };
};
