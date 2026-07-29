import canonicalLaneMathlib.AdmissibleClass

/-!
# Senescence Population Dynamics Package
-/

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure SenescencePopulationDynamicsPackage (O : SenescenceAdmittedObject) where
  replicativeSenescence : Prop
  stressInducedSenescence : Prop
  oncogeneInducedSenescence : Prop
  therapyInducedSenescence : Prop

structure SenescencePopulationDynamicsEvidence (O : SenescenceAdmittedObject)
    (D : SenescencePopulationDynamicsPackage O) where
  replicativeSenescenceClosed : D.replicativeSenescence
  stressInducedSenescenceClosed : D.stressInducedSenescence
  oncogeneInducedSenescenceClosed : D.oncogeneInducedSenescence
  therapyInducedSenescenceClosed : D.therapyInducedSenescence

def SenescencePopulationDynamicsClosed (O : SenescenceAdmittedObject)
    (D : SenescencePopulationDynamicsPackage O) : Prop :=
  D.replicativeSenescence ∧ D.stressInducedSenescence ∧
  D.oncogeneInducedSenescence ∧ D.therapyInducedSenescence

theorem senescence_population_dynamics_closed_from_evidence
    (O : SenescenceAdmittedObject) (D : SenescencePopulationDynamicsPackage O)
    (E : SenescencePopulationDynamicsEvidence O D) :
    SenescencePopulationDynamicsClosed O D := by
  exact And.intro E.replicativeSenescenceClosed
    (And.intro E.stressInducedSenescenceClosed
      (And.intro E.oncogeneInducedSenescenceClosed E.therapyInducedSenescenceClosed))

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse
