import Brand "lib/Brand";
import AIMixin "mixins/AI";

persistent actor {
  include AIMixin(Brand.systemPrompt);
};
