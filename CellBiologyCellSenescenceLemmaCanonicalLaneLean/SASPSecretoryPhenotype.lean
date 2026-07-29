import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure SASPComponents where
  interleukins : Prop
  chemokines : Prop
  growthFactors : Prop
  evidence : interleukins ∧ chemokines ∧ growthFactors

def SASPSecretoryClosed (s : SASPComponents) : Prop :=
  s.interleukins ∧ s.chemokines ∧ s.growthFactors

theorem sasp_secretory_closure (s : SASPComponents) :
    SASPSecretoryClosed s := by
  exact s.evidence

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse