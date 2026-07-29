import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure CellState where
  cellType : String
  populationDoublings : Nat
  telomereLength : Float
  p53Activity : Bool
  p16Activity : Bool

def senescenceMarker (c : CellState) : Prop :=
  c.p53Activity ∨ c.p16Activity

structure SenescenceAdmittedObject where
  cell : CellState
  isSenescent : Prop
  replicativeLimit : Prop
  stressInduced : Prop
  conclusion : isSenescent

def SenescenceWitnessClosed (O : SenescenceAdmittedObject) : Prop :=
  O.isSenescent

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse