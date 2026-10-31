module {
  // The construction program record: the owner's institution building
  // program — its name, staged status, the Celestial Governance v7.1
  // funding line it draws on, and the Chronicle framework it operates
  // under.
  public type ConstructionProgram = {
    program : Text;
    status : Text;
    fundingLine : Text;
    framework : Text;
  };

  // One institution of record on the program's campus construction
  // line: the institution's name and its role as the owner recorded it.
  public type Institution = {
    name : Text;
    role : Text;
  };
};
