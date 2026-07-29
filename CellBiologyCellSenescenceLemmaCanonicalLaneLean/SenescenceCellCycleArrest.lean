import canonicalLaneMathlib.AdmissibleClass

/-!
# Senescence Cell Cycle Arrest Package
-/

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure SenescenceCellCycleArrestPackage (O : SenescenceAdmittedObject) where
  irreversibleArrest : Prop
  g1Arrest : Prop
  dnaDamageResponse : Prop
  telomereDysfunction : Prop

structure SenescenceCellCycleArrestEvidence (O : SenescenceAdmittedObject)
    (C : SenescenceCellCycleArrestPackage O) where
  irreversibleArrestClosed : C.irreversibleArrest
  g1ArrestClosed : C.g1Arrest
  dnaDamageResponseClosed : C.dnaDamageResponse
  telomereDysfunctionClosed : C.telomereDysfunction

def SenescenceCellCycleArrestClosed (O : SenescenceAdmittedObject)
    (C : SenescenceCellCycleArrestPackage O) : Prop :=
  C.irreversibleArrest ∧ C.g1Arrest ∧ C.dnaDamageResponse ∧ C.telomereDysfunction

theorem senescence_cell_cycle_arrest_closed_from_evidence
    (O : SenescenceAdmittedObject) (C : SenescenceCellCycleArrestPackage O)
    (E : SenescenceCellCycleArrestEvidence O C) :
    SenescenceCellCycleArrestClosed O C := by
  exact And.intro E.irreversibleArrestClosed
    (And.intro E.g1ArrestClosed
      (And.intro E.dnaDamageResponseClosed E.telomereDysfunctionClosed))

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse
