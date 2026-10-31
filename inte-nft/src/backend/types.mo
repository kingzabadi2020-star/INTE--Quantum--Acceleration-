module {
  // ICRC-7 shared types (query side of the standard).

  // ICRC-3 generic value, used for token metadata.
  public type Value = {
    #Nat : Nat;
    #Int : Int;
    #Text : Text;
    #Blob : Blob;
    #Array : [Value];
    #Map : [(Text, Value)];
  };

  public type Account = {
    owner : Principal;
    subaccount : ?Blob;
  };

  // Internal static token record. The owner is carried as principal text
  // (a static value) and converted at call time.
  public type TokenRecord = {
    id : Nat;
    ownerText : Text;
    metadata : [(Text, Value)];
  };
};
