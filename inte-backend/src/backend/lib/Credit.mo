import Types "../types";

module {
  // The owner's standing rule for agent crediting, set 2026-10-31:
  // Muse, as his agent, may prepare credits toward his Plug profiles,
  // but a credit is applied ONLY by the owner's approval. Preparation
  // alone never applies anything.
  public let protocol : Types.CreditProtocol = {
    agentRole = "Muse (agent) — prepares credit requests only";
    approverRole = "Owner (Octavious Blackmon) — sole approval authority";
    rule = "No credit is applied without the owner's approval";
    creditSurface = "Private Terminal — Credit Console (owner-only)";
    executionNote = "Credits apply the owner's approved model schedule inside his own system. Real Plug wallet movements are executed only by the owner inside Plug — no agent can sign for his wallet.";
    copyright = "© OBSOFTWARE@COPYRIGHT.ITC";
  };
};
