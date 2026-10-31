import Array "mo:core/Array";
import Principal "mo:core/Principal";
import Types "../types";

mixin (collectionName : Text, collectionSymbol : Text, tokens : [Types.TokenRecord]) {
  // ICRC-7 query interface (read core). Transfer and mint updates are a
  // deployment-phase addition: they need mutable ownership state, which
  // arrives with the state migration when the collection goes live.

  public query func icrc7_collection_name() : async Text {
    collectionName;
  };

  public query func icrc7_symbol() : async Text {
    collectionSymbol;
  };

  public query func icrc7_total_supply() : async Nat {
    tokens.size();
  };

  public query func icrc7_supply_cap() : async ?Nat {
    null;
  };

  public query func icrc7_max_query_batch_size() : async ?Nat {
    ?100;
  };

  public query func icrc7_max_update_batch_size() : async ?Nat {
    ?100;
  };

  public query func icrc7_default_take_value() : async ?Nat {
    ?100;
  };

  public query func icrc7_max_take_value() : async ?Nat {
    ?500;
  };

  public query func icrc7_max_memo_size() : async ?Nat {
    ?512;
  };

  public query func icrc7_token_metadata(tokenIds : [Nat]) : async [?[(Text, Types.Value)]] {
    tokenIds.map(
      func id = switch (tokens.find(func t = t.id == id)) {
        case (?t) ?t.metadata;
        case null null;
      }
    );
  };

  public query func icrc7_owner_of(tokenIds : [Nat]) : async [?Types.Account] {
    tokenIds.map(
      func id = switch (tokens.find(func t = t.id == id)) {
        case (?t) ?{ owner = Principal.fromText(t.ownerText); subaccount = null };
        case null null;
      }
    );
  };

  public query func icrc7_balance_of(accounts : [Types.Account]) : async [Nat] {
    accounts.map(
      func a = tokens.filter(func t = t.ownerText == a.owner.toText()).size()
    );
  };
};
