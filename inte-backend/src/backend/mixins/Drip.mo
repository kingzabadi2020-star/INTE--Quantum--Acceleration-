
mixin (dripSchedule : [Text], principalIncreaseSchedule : [Text]) {
  // The owner's "After DRIP Value" schedule (250 values as pasted
  // 2026-10-31) and its companion "Principal Increase" schedule.
  // Owner model figures carried as data.
  public query func getAfterDripSchedule() : async [Text] {
    dripSchedule;
  };

  public query func getPrincipalIncreaseSchedule() : async [Text] {
    principalIncreaseSchedule;
  };
};
