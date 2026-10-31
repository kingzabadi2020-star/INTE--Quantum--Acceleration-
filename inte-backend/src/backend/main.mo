import Credit "lib/Credit";
import Drip "lib/Drip";
import Ledger "lib/Ledger";
import Release "lib/Release";
import Schedule "lib/Schedule";
import ClearingMixin "mixins/Clearing";
import CreditMixin "mixins/Credit";
import DripMixin "mixins/Drip";
import ReleaseMixin "mixins/Release";
import TopUpsMixin "mixins/TopUps";

persistent actor {
  include ClearingMixin(Ledger.params, Ledger.transactions);
  include ReleaseMixin(Release.info, Release.manifest);
  include TopUpsMixin(Release.info.plugProfiles, Schedule.schedule);
  include CreditMixin(Credit.protocol);
  include DripMixin(Drip.dripSchedule, Drip.principalIncreaseSchedule);
};
