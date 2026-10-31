import Types "../types";

mixin (info : Types.IntegrationInfo) {
  // This chain's integration record: parameters, the owner's Plug
  // profiles it serves, and the approval rule that governs it.
  public query func getIntegrationInfo() : async Types.IntegrationInfo {
    info;
  };
};
