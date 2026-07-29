import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure CellCycleArrestPackage where
  p21MediatedArrest : Prop
  p16MediatedArrest : Prop
  rbMediatedArrest : Prop
  senescenceAssociatedHeterochromatinFoci : Prop
  irreversibleGrowthArrest : Prop

structure CellCycleArrestEvidence (C : CellCycleArrestPackage) where
  p21MediatedArrestClosed : C.p21MediatedArrest
  p16MediatedArrestClosed : C.p16MediatedArrest
  rbMediatedArrestClosed : C.rbMediatedArrest
  senescenceAssociatedHeterochromatinFociClosed : C.senescenceAssociatedHeterochromatinFoci
  irreversibleGrowthArrestClosed : C.irreversibleGrowthArrest

def CellCycleArrestClosed (C : CellCycleArrestPackage) : Prop :=
  C.p21MediatedArrest ∧ C.p16MediatedArrest ∧ C.rbMediatedArrest ∧ C.senescenceAssociatedHeterochromatinFoci ∧ C.irreversibleGrowthArrest

theorem cell_cycle_arrest_closed_from_evidence (C : CellCycleArrestPackage) (E : CellCycleArrestEvidence C) :
    CellCycleArrestClosed C := by
  exact And.intro E.p21MediatedArrestClosed
    (And.intro E.p16MediatedArrestClosed
      (And.intro E.rbMediatedArrestClosed
        (And.intro E.senescenceAssociatedHeterochromatinFociClosed E.irreversibleGrowthArrestClosed)))

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse