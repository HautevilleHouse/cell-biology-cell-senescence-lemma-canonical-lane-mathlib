import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure CellSenescenceAdmittedObject where
  cellPopulation : Type u
  senescenceMarker : Prop
  cellCycleArrest : Prop
  saspSecretory : Prop
  conclusion : senescenceMarker ∧ cellCycleArrest ∧ saspSecretory

structure AdmissibleClass where
  object : CellSenescenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.senescenceMarker ∧ A.object.cellCycleArrest ∧ A.object.saspSecretory) ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse