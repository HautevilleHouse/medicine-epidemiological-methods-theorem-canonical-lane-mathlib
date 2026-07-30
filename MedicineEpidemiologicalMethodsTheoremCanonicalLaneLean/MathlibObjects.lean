import Mathlib

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean

structure MedicineSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MedicineAdmittedObject where
  space : MedicineSpace
  diseaseModel : Prop
  epidemiologicalMethodValid : Prop
  outcomeMeasure : Type
  outcomeTopology : TopologicalSpace outcomeMeasure
  validated : Prop
  conclusion : validated

def MedicineWitnessClosed (O : MedicineAdmittedObject) : Prop :=
  O.validated

end MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean
end HautevilleHouse