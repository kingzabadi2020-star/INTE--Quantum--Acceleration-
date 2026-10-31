import Types "../types";

mixin (
  mergedSystem : Types.MergedSystem,
  accessLayer : Types.AccessLayer,
  botFleet : Types.BotFleet,
  governance : Types.Governance,
  approvalRule : Text
) {
  // The merged system record: designation, program, brand, and the
  // owner's merge approval of record.
  public query func getMergedSystem() : async Types.MergedSystem {
    mergedSystem;
  };

  // The INTE Link Protocol access layer: the protocol layers and the
  // owner's Power Points and WAD Wi-Fi Access Point beneath them.
  public query func getAccessLayer() : async Types.AccessLayer {
    accessLayer;
  };

  // The bot fleet of record: 830,000,000 bots, the galactic background
  // rule, and the eleven INTE-named division tickers.
  public query func getBotFleet() : async Types.BotFleet {
    botFleet;
  };

  // The governance of record: Celestial Governance v7.1 — clearing fee,
  // treasury waterfall, and the MindSpark Education Vault record.
  public query func getGovernance() : async Types.Governance {
    governance;
  };

  // The owner's standing approval rule.
  public query func getApprovalRule() : async Text {
    approvalRule;
  };
};
