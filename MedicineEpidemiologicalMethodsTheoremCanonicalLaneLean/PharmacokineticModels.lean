import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean

structure PharmacokineticModel where
  drugConcentration : ℝ → ℝ
  absorptionRate : ℝ
  eliminationRate : ℝ
  volumeDistribution : ℝ
  steadyStateConcentration : ℝ
  halfLife : ℝ

structure PharmacokineticEvidence (P : PharmacokineticModel) where
  absorptionRatePositive : P.absorptionRate > 0
  eliminationRatePositive : P.eliminationRate > 0
  volumeDistributionPositive : P.volumeDistribution > 0
  steadyStateReachable : ∃ t : ℝ, P.drugConcentration t = P.steadyStateConcentration

def PharmacokineticClosed (P : PharmacokineticModel) : Prop :=
  P.absorptionRate > 0 ∧ P.eliminationRate > 0 ∧ P.volumeDistribution > 0 ∧
  (∃ t : ℝ, P.drugConcentration t = P.steadyStateConcentration)

theorem pharmacokinetic_closed_from_evidence (P : PharmacokineticModel) (E : PharmacokineticEvidence P) :
    PharmacokineticClosed P := by
  exact And.intro E.absorptionRatePositive
    (And.intro E.eliminationRatePositive
      (And.intro E.volumeDistributionPositive E.steadyStateReachable))

end MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean
end HautevilleHouse