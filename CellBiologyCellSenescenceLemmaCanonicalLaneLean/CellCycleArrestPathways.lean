import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure CellCycleArrestPathways where
  p53p21RbPathway : Prop
  p16INK4aRbPathway : Prop
  dNAResponse : Prop
  heterochromatinFormation : Prop

structure CellCycleArrestEvidence (C : CellCycleArrestPathways) where
  p53p21RbPathwayClosed : C.p53p21RbPathway
  p16INK4aRbPathwayClosed : C.p16INK4aRbPathway
  dNAResponseClosed : C.dNAResponse
  heterochromatinFormationClosed : C.heterochromatinFormation

def CellCycleArrestClosed (C : CellCycleArrestPathways) : Prop :=
  C.p53p21RbPathway ∧ C.p16INK4aRbPathway ∧ C.dNAResponse ∧ C.heterochromatinFormation

theorem cell_cycle_arrest_closed_from_evidence
    (C : CellCycleArrestPathways) (E : CellCycleArrestEvidence C) :
    CellCycleArrestClosed C := by
  exact And.intro E.p53p21RbPathwayClosed
    (And.intro E.p16INK4aRbPathwayClosed
      (And.intro E.dNAResponseClosed E.heterochromatinFormationClosed))

end HautevilleHouse
end CellBiologyCellSenescenceLemmaCanonicalLaneLean