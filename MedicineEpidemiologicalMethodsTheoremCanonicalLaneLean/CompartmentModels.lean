import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean

structure CompartmentModel where
  susceptibleCompartment : Type u
  infectedCompartment : Type v
  recoveredCompartment : Type w
  transmissionRate : ℝ
  recoveryRate : ℝ
  diseaseFreeEquilibrium : Prop
  endemicEquilibrium : Prop
  basicReproductiveNumber : ℝ

structure CompartmentModelEvidence (C : CompartmentModel) where
  diseaseFreeEquilibriumClosed : C.diseaseFreeEquilibrium
  endemicEquilibriumClosed : C.endemicEquilibrium
  basicReproductiveNumberPositive : C.basicReproductiveNumber > 0

def CompartmentModelClosed (C : CompartmentModel) : Prop :=
  C.diseaseFreeEquilibrium ∧ C.endemicEquilibrium ∧ C.basicReproductiveNumber > 0

theorem compartment_model_closed_from_evidence (C : CompartmentModel) (E : CompartmentModelEvidence C) :
    CompartmentModelClosed C := by
  exact And.intro E.diseaseFreeEquilibriumClosed
    (And.intro E.endemicEquilibriumClosed E.basicReproductiveNumberPositive)

end MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean
end HautevilleHouse