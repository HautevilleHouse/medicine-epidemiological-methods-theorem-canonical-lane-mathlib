import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean

structure PharmacokineticsModel where
  absorptionRate : Float
  eliminationRate : Float
  volumeOfDistribution : Float
  dose : Float
  dosingInterval : Float
  compartmentCount : Nat

structure PharmacokineticsEvidence (P : PharmacokineticsModel) where
  absorptionRatePositive : P.absorptionRate ≥ 0.0
  eliminationRatePositive : P.eliminationRate ≥ 0.0
  volumePositive : P.volumeOfDistribution > 0.0
  dosePositive : P.dose > 0.0
  dosingIntervalPositive : P.dosingInterval > 0.0
  compartmentCountPositive : P.compartmentCount ≥ 1

def PharmacokineticsClosed (P : PharmacokineticsModel) : Prop :=
  P.absorptionRate ≥ 0.0 ∧ P.eliminationRate ≥ 0.0 ∧ P.volumeOfDistribution > 0.0 ∧
  P.dose > 0.0 ∧ P.dosingInterval > 0.0 ∧ P.compartmentCount ≥ 1

theorem pharmacokinetics_closed_from_evidence (P : PharmacokineticsModel)
    (E : PharmacokineticsEvidence P) : PharmacokineticsClosed P :=
  And.intro E.absorptionRatePositive
    (And.intro E.eliminationRatePositive
      (And.intro E.volumePositive
        (And.intro E.dosePositive
          (And.intro E.dosingIntervalPositive E.compartmentCountPositive))))

end MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean
end HautevilleHouse