import Types "../types";

module {
  // INTE Construction — the owner's institution building program
  // carried as data, created 2026-10-31 on the owner's order:
  // "IMPLEMENT CODE FOR CONSTRUCTION 🚧". Read-core staging like the
  // rest of his system: this record layer holds and moves nothing;
  // deployment joins the staged set only under the funded deployment
  // and the owner's word.

  public let constructionProgram : Types.ConstructionProgram = {
    program = "INTE Construction — Institution Building Program";
    status = "STAGED";
    fundingLine = "Celestial Governance v7.1 — R&D & Interstellar Infrastructure (30%)";
    framework = "Network-institution licensing (Chronicle §4.1)";
  };

  // The institutions of record on the campus construction line, as
  // the owner named them in his 2026-10-31 order. Wake Forest's role
  // carries the owner's own spelling of the order ("WAKES FOREST") so
  // the record shows exactly what he wrote.
  public let institutions : [Types.Institution] = [
    {
      name = "Tuskegee University";
      role = "Institution of record — campus construction line (owner's order, 2026-10-31)";
    },
    {
      name = "Wake Forest";
      role = "Institution of record — campus construction line (owner's order spelled 'WAKES FOREST', 2026-10-31)";
    },
  ];

  // The owner's standing approval rule, verbatim.
  public let approvalRule : Text = "Credits and distributions are prepared by the agent and applied only by the owner's approval";
};
