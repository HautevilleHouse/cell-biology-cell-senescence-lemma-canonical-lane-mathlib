import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure CellSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellSenescenceAdmittedObject where
  space : CellSpace
  cellularContext : Prop
  senescenceEndpoint : Prop
  conclusion : senescenceEndpoint

structure CellSenescenceEndgameState where
  object : CellSenescenceAdmittedObject

def CellSenescenceWitnessClosed (O : CellSenescenceAdmittedObject) : Prop :=
  O.senescenceEndpoint

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse