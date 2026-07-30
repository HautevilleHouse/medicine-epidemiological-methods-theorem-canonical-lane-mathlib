import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean

structure MedicineAdmittedObject where
  studyPopulation : Type
  exposureDefinition : Prop
  outcomeDefinition : Prop
  confoundingControlled : Prop
  effectEstimate : Prop
  conclusion : effectEstimate

def MedicineWitnessClosed (O : MedicineAdmittedObject) : Prop :=
  O.effectEstimate

structure MedicineEndgameState where
  object : MedicineAdmittedObject

end MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean
end HautevilleHouse