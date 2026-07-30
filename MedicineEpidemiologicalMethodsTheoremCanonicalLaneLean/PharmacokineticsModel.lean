import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean

structure PharmacokineticsModelPackage where
  absorptionRate : Prop
  distributionVolume : Prop
  eliminationRate : Prop
  concentrationCurve : Prop
  dose : Prop

structure PharmacokineticsModelEvidence (P : PharmacokineticsModelPackage) where
  absorptionRateClosed : P.absorptionRate
  distributionVolumeClosed : P.distributionVolume
  eliminationRateClosed : P.eliminationRate
  concentrationCurveClosed : P.concentrationCurve
  doseClosed : P.dose

def PharmacokineticsModelClosed (P : PharmacokineticsModelPackage) : Prop :=
  P.absorptionRate ∧ P.distributionVolume ∧ P.eliminationRate ∧ P.concentrationCurve ∧ P.dose

theorem pharmacokinetics_model_closed_from_evidence (P : PharmacokineticsModelPackage) (E : PharmacokineticsModelEvidence P) : PharmacokineticsModelClosed P := by
  exact And.intro E.absorptionRateClosed (And.intro E.distributionVolumeClosed (And.intro E.eliminationRateClosed (And.intro E.concentrationCurveClosed E.doseClosed)))

end HautevilleHouse
end MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean
