import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean

structure EpidemiologicalAdmittedObject where
  diseaseModel : CompartmentModel
  diagnosticTest : DiagnosticInferencePackage
  pharmacokineticModel : PharmacokineticsModel
  survivalModel : SurvivalModel
  integratedConclusion : Prop

structure EpidemiologicalAdmissibleClass where
  object : EpidemiologicalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : EpidemiologicalAdmissibleClass) : Prop :=
  CompartmentModelClosed A.object.diseaseModel ∧
  DiagnosticInferenceClosed A.object.diagnosticTest ∧
  PharmacokineticsClosed A.object.pharmacokineticModel ∧
  SurvivalClosed A.object.survivalModel

theorem bridge_from_admissible_class (A : EpidemiologicalAdmissibleClass) :
    bridgeClosed A :=
  And.intro (compartment_model_closed_from_evidence _ _) sorry

def gateClosed (A : EpidemiologicalAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : EpidemiologicalAdmissibleClass) :
    gateClosed A :=
  A.gateWitness

def ConstrainedEpidemiologicalClosure (A : EpidemiologicalAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_epidemiological_endgame (A : EpidemiologicalAdmissibleClass) :
    ConstrainedEpidemiologicalClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean
end HautevilleHouse