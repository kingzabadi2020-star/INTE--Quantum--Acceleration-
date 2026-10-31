import Types "../types";

module {
  // Collection identity and the genesis token, as static data.
  // Staged defaults set 2026-10-31 — the owner can rename the collection
  // or replace the genesis token before deployment.
  public let collectionName : Text = "INTE Universe NFT";
  public let collectionSymbol : Text = "IUNFT";

  // Token 1 — the genesis token, owned by the owner's deployer identity
  // (the same principal that receives the JERM/INTE supply).
  public let tokens : [Types.TokenRecord] = [
    {
      id = 1;
      ownerText = "ssrfp-cwoy3-zlzm4-eywp7-nao7y-qhgau-f75jn-ucv7e-7f7vs-aj6uv-uqe";
      metadata = [
        ("icrc7:metadata:name", #Text("V3 Beta Genesis")),
        ("icrc7:metadata:description", #Text("Genesis NFT of the INTE Universe — V3 Beta early access mark. OBSOFTWARE™ / Interstellar Department of Transportation.")),
        ("icrc7:metadata:collection", #Text("INTE Universe NFT")),
        ("copyright", #Text("© OBSOFTWARE@COPYRIGHT.ITC")),
        ("architect", #Text("Octavious Blackmon")),
      ];
    },
  ];
};
