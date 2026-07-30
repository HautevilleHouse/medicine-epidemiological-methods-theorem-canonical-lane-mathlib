import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean

structure DiagnosticInferencePackage where
  sensitivity : Prop
  specificity : Prop
  prevalence : Prop
  predictiveValues : Prop
  likelihoodRatio : Prop

structure DiagnosticInferenceEvidence (D : DiagnosticInferencePackage) where
  sensitivityClosed : D.sensitivity
  specificityClosed : D.specificity
  prevalenceClosed : D.prevalence
  predictiveValuesClosed : D.predictiveValues
  likelihoodRatioClosed : D.likelihoodRatio

def DiagnosticInferenceClosed (D : DiagnosticInferencePackage) : Prop :=
  D.sensitivity ∧ D.specificity ∧ D.prevalence ∧
  D.predictiveValues ∧ D.likelihoodRatio

theorem diagnostic_inference_closed_from_evidence
    (D : DiagnosticInferencePackage) (E : DiagnosticInferenceEvidence D) :
    DiagnosticInferenceClosed D := by
  exact And.intro E.sensitivityClosed
    (And.intro E.specificityClosed
      (And.intro E.prevalenceClosed
        (And.intro E.predictiveValuesClosed E.likelihoodRatioClosed)))

end MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean
end HautevilleHouse