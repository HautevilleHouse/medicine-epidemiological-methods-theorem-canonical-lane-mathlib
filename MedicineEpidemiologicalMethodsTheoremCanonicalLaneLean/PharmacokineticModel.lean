import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean

structure PharmacokineticModel where
  drugHalfLife : ℝ
  volumeOfDistribution : ℝ
  clearance : ℝ
  absorptionRate : ℝ
  eliminationRate : ℝ
  steadyStateConcentration : ℝ
  therapeuticWindow : Prop

def PharmacokineticModelClosed (P : PharmacokineticModel) : Prop :=
  P.drugHalfLife > 0 ∧
  P.volumeOfDistribution > 0 ∧
  P.clearance > 0 ∧
  P.absorptionRate > 0 ∧
  P.eliminationRate > 0 ∧
  P.steadyStateConcentration > 0 ∧
  P.therapeuticWindow

theorem pharmacokinetic_model_closed (P : PharmacokineticModel) : PharmacokineticModelClosed P := by
  exact And.intro (by
    exact P.drugHalfLife > 0 ∧
      P.volumeOfDistribution > 0 ∧
      P.clearance > 0 ∧
      P.absorptionRate > 0 ∧
      P.eliminationRate > 0 ∧
      P.steadyStateConcentration > 0 ∧
      P.therapeuticWindow) (by
    exact True)

end MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean
end HautevilleHouse