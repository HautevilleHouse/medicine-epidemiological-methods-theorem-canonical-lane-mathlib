import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean

structure CausalInferencePackage where
  treatmentEffect : Prop
  confoundingControl : Prop
  instrumentalVariable : Prop
  directedAcyclicGraph : Prop
  counterfactualConsistency : Prop

structure CausalInferenceEvidence (C : CausalInferencePackage) where
  treatmentEffectClosed : C.treatmentEffect
  confoundingControlClosed : C.confoundingControl
  instrumentalVariableClosed : C.instrumentalVariable
  directedAcyclicGraphClosed : C.directedAcyclicGraph
  counterfactualConsistencyClosed : C.counterfactualConsistency

def CausalInferenceClosed (C : CausalInferencePackage) : Prop :=
  C.treatmentEffect ∧ C.confoundingControl ∧ C.instrumentalVariable ∧ C.directedAcyclicGraph ∧ C.counterfactualConsistency

theorem causal_inference_closed_from_evidence (C : CausalInferencePackage) (E : CausalInferenceEvidence C) : CausalInferenceClosed C := by
  exact And.intro E.treatmentEffectClosed (And.intro E.confoundingControlClosed (And.intro E.instrumentalVariableClosed (And.intro E.directedAcyclicGraphClosed E.counterfactualConsistencyClosed)))

end HautevilleHouse
end MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean
