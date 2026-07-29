import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellSenescenceLemmaCanonicalLaneLean.CellSenescenceAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure CellCycleCheckpoints where
  g1Checkpoint : Prop
  g1sTransition : Prop
  sPhaseCheckpoint : Prop
  g2Checkpoint : Prop
  mitoticCheckpoint : Prop
  dnaDamageRepair : Prop
  p53Activation : Prop
  p21Induction : Prop
  rbHypophosphorylation : Prop

structure CellCycleArrestEvidence (C : CellCycleCheckpoints) where
  g1CheckpointClosed : C.g1Checkpoint
  g1sTransitionClosed : C.g1sTransition
  sPhaseCheckpointClosed : C.sPhaseCheckpoint
  g2CheckpointClosed : C.g2Checkpoint
  mitoticCheckpointClosed : C.mitoticCheckpoint
  dnaDamageRepairClosed : C.dnaDamageRepair
  p53ActivationClosed : C.p53Activation
  p21InductionClosed : C.p21Induction
  rbHypophosphorylationClosed : C.rbHypophosphorylation

def CellCycleArrestClosed (C : CellCycleCheckpoints) : Prop :=
  C.g1Checkpoint ∧ C.g1sTransition ∧ C.sPhaseCheckpoint ∧
  C.g2Checkpoint ∧ C.mitoticCheckpoint ∧ C.dnaDamageRepair ∧
  C.p53Activation ∧ C.p21Induction ∧ C.rbHypophosphorylation

theorem cell_cycle_arrest_closed_from_evidence (C : CellCycleCheckpoints)
    (E : CellCycleArrestEvidence C) : CellCycleArrestClosed C := by
  exact And.intro E.g1CheckpointClosed
    (And.intro E.g1sTransitionClosed
      (And.intro E.sPhaseCheckpointClosed
        (And.intro E.g2CheckpointClosed
          (And.intro E.mitoticCheckpointClosed
            (And.intro E.dnaDamageRepairClosed
              (And.intro E.p53ActivationClosed
                (And.intro E.p21InductionClosed
                  E.rbHypophosphorylationClosed)))))))

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse