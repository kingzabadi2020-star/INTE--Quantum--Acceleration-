import Chains "../common/lib/Chains";
import IntegrationMixin "../common/mixins/Integration";

persistent actor {
  include IntegrationMixin(Chains.bitcoin);
};
