import Chains "../common/lib/Chains";
import XLedgerMixin "../common/mixins/XLedger";

persistent actor {
  include XLedgerMixin(Chains.crossChainLedger);
};
