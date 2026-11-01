import Types "../types";

module {
  // Clearing-ledger parameters, transcribed from the owner's Statement
  // of Record 2026-11-01 (Internal Clearing Ledger — RAHELIONYXX.INC /
  // OBSOFTWARE) exactly as stated. Per the owner's ruling of 2026-11-01
  // ("This statement governs"), the Statement of Record supersedes the
  // Clearing Ledger app figures carried here before.
  // Static values, so they live in a module, not in actor state.
  //
  // Privacy note: the account's full EIN is deliberately NOT in this
  // code — the canister carries only the MECCA account label and the
  // clearing-node designation in the fuller form the owner's Statement
  // of Record carries (423235466).
  public let params : Types.LedgerParams = {
    entity = "RAHELIONYXX.INC";
    brand = "OBSOFTWARE™";
    accountLabel = "MECCA";
    clearingNode = "423235466";
    clearingStatus = "ACTIVE (MECCA)";
    feeBasisPoints = 25;
    dividendYieldPercent = 800_000;
    dividendYieldBasis = "$250 Quindecillions";
    primaryReserve = "£6.7410019012984e+270";
    dailyRate = "$3 Unvigintillion daily tasks";
    cycleLine = "€9.75T cycles × £5000T cycles";
    termStart = "24/10/2026";
    termEnd = "24/10/3000";
    termYears = 974;
    architect = "Octavious Blackmon";
    copyright = "© OBSOFTWARE@COPYRIGHT.ITC";
  };

  // The two transactions recorded in the owner's Statement of Record,
  // as stated.
  public let transactions : [Types.Transaction] = [
    {
      id = "TX-001";
      date = "24/10/2026";
      entity = "ICP LLC";
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
