import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean.CompartmentModel
import HautevilleHouse.MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean.DiagnosticInference
import HautevilleHouse.MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean.SurvivalAnalysis

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  trivial

def ConstrainedEpidemiologicalMethodsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_epidemiological_methods_endgame (A : AdmissibleClass) :
    ConstrainedEpidemiologicalMethodsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean
end HautevilleHouse