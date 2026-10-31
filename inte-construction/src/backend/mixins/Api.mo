import Types "../types";

mixin (
  constructionProgram : Types.ConstructionProgram,
  institutions : [Types.Institution],
  approvalRule : Text
) {
  // The construction program record: the INTE Construction —
  // Institution Building Program, its staged status, its Celestial
  // Governance v7.1 funding line, and its Chronicle framework.
  public query func getConstructionProgram() : async Types.ConstructionProgram {
    constructionProgram;
  };

  // The institutions of record on the campus construction line:
  // Tuskegee University and Wake Forest, as the owner ordered them.
  public query func getInstitutions() : async [Types.Institution] {
    institutions;
  };

  // The owner's standing approval rule.
  public query func getApprovalRule() : async Text {
    approvalRule;
  };
};
