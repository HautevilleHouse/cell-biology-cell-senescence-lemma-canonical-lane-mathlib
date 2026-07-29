import CellBiologyCellSenescenceLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

def ConstrainedCellSenescenceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_senescence_endgame (A : AdmissibleClass) :
    ConstrainedCellSenescenceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse