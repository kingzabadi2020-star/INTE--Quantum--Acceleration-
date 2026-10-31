import Array "mo:core/Array";
import Types "../types";

mixin (profiles : [Text], schedule : [Text]) {
  // The owner's "New Balance" top-up schedule (250 values as pasted),
  // applied to both Plug profiles in the staged deployment package.
  // These are model figures carried as data — no wallet is credited by
  // this canister, and the summary status says so.
  public query func getTopUpSchedule() : async [Text] {
    schedule;
  };

  public query func getProfileTopUps() : async [Types.ProfileTopUp] {
    let n = schedule.size();
    let first = if (n > 0) schedule[0] else "0.00";
    let last = if (n > 0) schedule[n - 1] else "0.00";
    profiles.map(
      func p : Types.ProfileTopUp {
        {
          profile = p;
          periods = n;
          firstBalance = "$" # first;
          finalBalance = "$" # last;
          status = "OWNER MODEL — staged top-up schedule, not a wallet balance";
        };
      }
    );
  };
};
