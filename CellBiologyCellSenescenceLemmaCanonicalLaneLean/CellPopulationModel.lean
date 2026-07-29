import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellSenescenceLemmaCanonicalLaneLean.CellSenescenceAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure PopulationDynamics where
  proliferatingCells : Nat
  senescentCells : Nat
  apoptoticCells : Nat
  immuneClearanceRate : ℝ
  senescenceTransmissionRate : ℝ
  proliferationRate : ℝ
  apoptosisRate : ℝ
  carryingCapacity : ℝ
  steadyStateCondition : Prop
  stabilityAnalysis : Prop

structure PopulationDynamicsEvidence (P : PopulationDynamics) where
  proliferatingCellsMeasured : P.proliferatingCells ≥ 0
  senescentCellsMeasured : P.senescentCells ≥ 0
  apoptoticCellsMeasured : P.apoptoticCells ≥ 0
  steadyStateConditionClosed : P.steadyStateCondition
  stabilityAnalysisClosed : P.stabilityAnalysis

def PopulationDynamicsClosed (P : PopulationDynamics) : Prop :=
  P.proliferatingCells ≥ 0 ∧ P.senescentCells ≥ 0 ∧ P.apoptoticCells ≥ 0 ∧
  P.steadyStateCondition ∧ P.stabilityAnalysis

theorem population_dynamics_closed_from_evidence (P : PopulationDynamics)
    (E : PopulationDynamicsEvidence P) : PopulationDynamicsClosed P := by
  exact And.intro E.proliferatingCellsMeasured
    (And.intro E.senescentCellsMeasured
      (And.intro E.apoptoticCellsMeasured
        (And.intro E.steadyStateConditionClosed
          E.stabilityAnalysisClosed)))

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse