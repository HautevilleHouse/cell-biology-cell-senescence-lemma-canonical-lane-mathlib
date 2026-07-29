import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure CellCycleRegulationPackage where
  g1Checkpoint : Prop
  g2Checkpoint : Prop
  mitosisCheckpoint : Prop
  cyclinDependentKinases : Prop

structure CellCycleRegulationEvidence (C : CellCycleRegulationPackage) where
  g1CheckpointClosed : C.g1Checkpoint
  g2CheckpointClosed : C.g2Checkpoint
  mitosisCheckpointClosed : C.mitosisCheckpoint
  cyclinDependentKinasesClosed : C.cyclinDependentKinases

def CellCycleRegulationClosed (C : CellCycleRegulationPackage) : Prop :=
  C.g1Checkpoint ∧ C.g2Checkpoint ∧ C.mitosisCheckpoint ∧ C.cyclinDependentKinases

theorem cell_cycle_regulation_closed_from_evidence (C : CellCycleRegulationPackage) (E : CellCycleRegulationEvidence C) : CellCycleRegulationClosed C := by
  exact And.intro E.g1CheckpointClosed (And.intro E.g2CheckpointClosed (And.intro E.mitosisCheckpointClosed E.cyclinDependentKinasesClosed))

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse