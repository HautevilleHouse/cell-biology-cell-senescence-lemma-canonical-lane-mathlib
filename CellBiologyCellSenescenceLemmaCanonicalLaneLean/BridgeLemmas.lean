import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.senescenceMarker ∧ A.object.cellCycleArrest ∧ A.object.saspSecretory

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  have h := A.object.conclusion
  exact { left := h.1, right := And.intro h.2.1 h.2.2 }

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse