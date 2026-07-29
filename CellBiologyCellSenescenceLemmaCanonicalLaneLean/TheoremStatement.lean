import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure CellSenescenceAdmittedObject where
  sense : Prop
  pathway : Prop
  p53Status : Prop
  p21Status : Prop
  outcome : Type
  established : Prop
  conclusion : outcome

def CellSenescenceWitnessClosed (O : CellSenescenceAdmittedObject) : Prop :=
  O.established

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse