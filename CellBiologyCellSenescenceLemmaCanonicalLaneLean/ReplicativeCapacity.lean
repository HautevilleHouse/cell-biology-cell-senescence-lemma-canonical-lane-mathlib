import CellBiologyCellSenescenceLemmaCanonicalLaneLean.CellObjects

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure ReplicativeCapacityPackage where
  cellType : String
  initialDoublings : Nat
  currentDoublings : Nat
  maxDoublings : Nat
  telomereErosionRate : Float
  hasReplicativePotential : currentDoublings < maxDoublings

def replicativeCapacityClosed (R : ReplicativeCapacityPackage) : Prop :=
  R.currentDoublings < R.maxDoublings

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse