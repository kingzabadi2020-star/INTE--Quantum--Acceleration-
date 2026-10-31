module {
  // The merged system record: the owner's designation for the merged
  // blueprint (Google / Alphabet / Apple published patterns implemented
  // into INTE), the program banner, and the merge approval of record.
  public type MergedSystem = {
    designation : Text;
    program : Text;
    brand : Text;
    mergeStatus : Text;
    status : Text;
  };

  // One named access point of the INTE Link Protocol's access layer.
  public type AccessPoint = {
    name : Text;
    role : Text;
  };

  // The INTE Link Protocol access layer: the protocol's three layers and
  // the owner's access points beneath them. Design of record — a staged
  // blueprint designation, not a deployed network stack.
  public type AccessLayer = {
    protocol : Text;
    layers : [Text];
    accessPoints : [AccessPoint];
    status : Text;
  };

  // One division of the bots operations protocol: every division is
  // named INTE; sub-divisions carry an INTE- prefixed ticker.
  public type BotDivision = {
    name : Text;
    ticker : Text;
  };

  // The bot fleet of record: the owner's 830,000,000-bot designation,
  // the galactic background rule, and the division tickers.
  public type BotFleet = {
    totalBots : Nat;
    background : Text;
    divisions : [BotDivision];
    status : Text;
  };

  // The Celestial Governance v7.1 treasury waterfall, in percent.
  public type TreasuryWaterfall = {
    humanitarianCivicInnovation : Nat;
    rdInterstellarInfrastructure : Nat;
    sovereignLiquidityReserve : Nat;
    ecosystemOperationsNetworkAudit : Nat;
  };

  // The governance record of the merged system: the Celestial Chronicle
  // framework, its clearing fee, its waterfall, and its vault record.
  public type Governance = {
    framework : Text;
    authority : Text;
    clearingFeeBps : Nat;
    waterfall : TreasuryWaterfall;
    vaultRecord : Text;
    copyright : Text;
  };
};
