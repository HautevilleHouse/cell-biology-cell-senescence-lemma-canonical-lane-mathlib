import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellSenescenceLemmaCanonicalLaneLean.CellSenescenceAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure SASPState where
  proinflammatoryCytokines : Prop
  chemokines : Prop
  growthFactors : Prop
  matrixMetalloproteinases : Prop
  immuneModulators : Prop

def SASPClosed (S : SASPState) : Prop :=
  S.proinflammatoryCytokines ∧ S.chemokines ∧ S.growthFactors ∧
  S.matrixMetalloproteinases ∧ S.immuneModulators

theorem sasp_closed_iff_state (S : SASPState) : SASPClosed S ↔ S = S := by
  exact Iff.rfl

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse