import Nat "mo:core/Nat";
import Types "../types";

mixin (params : Types.LedgerParams, transactions : [Types.Transaction]) {
  // The clearing-ledger status: entity, account, fee, yield target,
  // reserve, term, and governance marks, exactly as parameterized.
  public query func getClearingLedgerStatus() : async Types.LedgerParams {
    params;
  };

  // The recorded clearing transactions, as displayed in the source app.
  public query func getTransactions() : async [Types.Transaction] {
    transactions;
  };

  // Clearing fee and dividend projection, same formulas as the source
  // app: fee = base * fee rate; dividend = base * yield rate.
  // Amounts are in trillions.
  public query func calculateYield(baseTrillions : Float, feeRatePercent : Float, yieldPercent : Float) : async Types.YieldResult {
    {
      clearingFee = baseTrillions * feeRatePercent / 100.0;
      dividendReturn = baseTrillions * yieldPercent / 100.0;
    };
  };

  // The source app's default simulation, derived from the ledger
  // parameters: base 5,000T at the ledger's own fee and yield rates.
  public query func defaultYield() : async Types.YieldResult {
    let feePercent = params.feeBasisPoints.toFloat() / 100.0;
    {
      clearingFee = 5000.0 * feePercent / 100.0;
      dividendReturn = 5000.0 * params.dividendYieldPercent.toFloat() / 100.0;
    };
  };
};
