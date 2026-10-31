import Types "../types";

mixin (protocol : Types.CreditProtocol) {
  // The credit-approval protocol, as data: who prepares, who approves,
  // and the rule that no credit applies without the owner's approval.
  public query func getCreditProtocol() : async Types.CreditProtocol {
    protocol;
  };
};
