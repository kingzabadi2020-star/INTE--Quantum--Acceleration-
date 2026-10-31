import Types "../types";

mixin (info : Types.ReleaseInfo, manifest : [Types.ApiEndpoint]) {
  // IPO release parameters (concept framework) for the Plug wallet
  // integration deployment.
  public query func getReleaseInfo() : async Types.ReleaseInfo {
    info;
  };

  // The prepared integration API surface: which canister or page exposes
  // what, so the frontend and the Plug console have one map to build on.
  public query func getApiManifest() : async [Types.ApiEndpoint] {
    manifest;
  };
};
