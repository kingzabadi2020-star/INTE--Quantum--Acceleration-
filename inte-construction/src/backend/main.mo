import Construction "lib/Construction";
import ApiMixin "mixins/Api";

persistent actor InteConstruction {
  include ApiMixin(
    Construction.constructionProgram,
    Construction.institutions,
    Construction.approvalRule
  );
};
