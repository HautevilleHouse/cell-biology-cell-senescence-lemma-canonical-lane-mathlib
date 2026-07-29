import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure CellularSenescenceAdmittedObject where
  cellPopulation : Type u
  senescenceMarker : Type v
  replicationLifespan : Prop
  telomereLengthDepletion : Prop
  dnaDamageResponseActivation : Prop
  endpointConclusion : senescenceMarker

def CellularSenescenceWitnessClosed (O : CellularSenescenceAdmittedObject) : Prop :=
  O.endpointConclusion

structure AdmissibleClass where
  object : CellularSenescenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CellularSenescenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse
