import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CellSenescenceState where
  cellType : Type u
  cellCyclePhase : Type v
  senescenceMarkers : Type w
  proliferativeStatus : Prop
  apoptoticStatus : Prop
  senescentStatus : Prop
  dnaDamageResponse : Prop

structure CellSenescenceAdmittedObject where
  state : CellSenescenceState
  cellularSenescenceClaim : Prop
  cellularSenescenceConclusion : state.senescentStatus

def CellSenescenceWitnessClosed (O : CellSenescenceAdmittedObject) : Prop :=
  O.cellularSenescenceConclusion

structure AdmissibleClass where
  object : CellSenescenceAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CellSenescenceWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse