import Quantum "lib/Quantum";
import ApiMixin "mixins/Api";

persistent actor QuantumADI {
  include ApiMixin(
    Quantum.mergedSystem,
    Quantum.accessLayer,
    Quantum.botFleet,
    Quantum.governance,
    Quantum.approvalRule
  );
};
