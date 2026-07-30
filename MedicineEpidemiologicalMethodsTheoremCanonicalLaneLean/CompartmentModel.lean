import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean

structure CompartmentModelPackage where
  susceptibleDimension : Type u
  infectedDimension : Type v
  recoveredDimension : Type w
  transitionRates : Prop
  conservationLaw : Prop
  wellposed : Prop

structure CompartmentModelEvidence (C : CompartmentModelPackage) where
  transitionRatesClosed : C.transitionRates
  conservationLawClosed : C.conservationLaw
  wellposedClosed : C.wellposed

def CompartmentModelClosed (C : CompartmentModelPackage) : Prop :=
  C.transitionRates ∧ C.conservationLaw ∧ C.wellposed

theorem compartment_model_closed_from_evidence
    (C : CompartmentModelPackage) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.transitionRatesClosed
    (And.intro E.conservationLawClosed E.wellposedClosed)

end MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean
end HautevilleHouse