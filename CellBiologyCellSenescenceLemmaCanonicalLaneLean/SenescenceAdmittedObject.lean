import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure SenescenceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SenescenceAdmittedObject where
  space : SenescenceSpace
  timeDependentPopulation : Prop
  senescenceMarkerExpression : Prop
  modelType : Type
  modelTopology : TopologicalSpace modelType
  modelConsistent : Prop
  conclusion : modelConsistent

structure SenescenceEndgameState where
  object : SenescenceAdmittedObject

def SenescenceWitnessClosed (O : SenescenceAdmittedObject) : Prop :=
  O.modelConsistent

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse
