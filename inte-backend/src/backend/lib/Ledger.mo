import Types "../types";

module {
  // Clearing-ledger parameters, transcribed from the Internal Clearing
  // Ledger app (Gemini Canvas share, read 2026-10-27) exactly as displayed.
  // Static values, so they live in a module, not in actor state.
  //
  // Privacy note: the source app shows the account's full EIN as its
  // "Reg ID". That value is deliberately NOT in this code — the canister
  // carries only the MECCA account label and the truncated clearing-node
  // form (4232354), the same form the INTE Universe Hub displays.
  public let params : Types.LedgerParams = {
    entity = "RAHELIONYXX.INC";
    brand = "OBSOFTWARE™";
    accountLabel = "MECCA";
    clearingNode = "4232354";
    clearingStatus = "ACTIVE (MECCA)";
    feeBasisPoints = 25;
    dividendYieldPercent = 800_000;
    primaryReserve = "£6.741e+270";
    dailyRate = "$3 Unvigintillion";
    termStart = "24/10/2026";
    termEnd = "24/10/3000";
    termYears = 974;
    architect = "Octavious Blackmon";
    copyright = "© OBSOFTWARE@COPYRIGHT.ITC";
  };

  // The two transactions recorded in the source app's ledger, as displayed.
  public let transactions : [Types.Transaction] = [
    {
      id = "TX-001";
      date = "24/10/2026";
      entity = "ICP LLC (internetcomputer.org)";
      amount = "£9546261421358073e+250";
      fee = "£2.50T";
    },
    {
      id = "TX-002";
      date = "24/10/2026";
      entity = "MarketBeat LLC";
      amount = "£5423235466410019012984";
      fee = "£12.50T";
    },
  ];
};
