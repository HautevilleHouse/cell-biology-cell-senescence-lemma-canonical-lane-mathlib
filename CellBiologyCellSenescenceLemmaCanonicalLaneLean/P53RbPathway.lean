import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure P53RbPathwayPackage where
  p53Activation : Prop
  p21Induction : Prop
  rbHypophosphorylation : Prop
  e2fTargetRepression : Prop

structure P53RbPathwayEvidence (P : P53RbPathwayPackage) where
  p53ActivationClosed : P.p53Activation
  p21InductionClosed : P.p21Induction
  rbHypophosphorylationClosed : P.rbHypophosphorylation
  e2fTargetRepressionClosed : P.e2fTargetRepression

def P53RbPathwayClosed (P : P53RbPathwayPackage) : Prop :=
  P.p53Activation ∧ P.p21Induction ∧ P.rbHypophosphorylation ∧ P.e2fTargetRepression

theorem p53_rb_pathway_closed_from_evidence (P : P53RbPathwayPackage) (E : P53RbPathwayEvidence P) : P53RbPathwayClosed P := by
  exact And.intro E.p53ActivationClosed (And.intro E.p21InductionClosed (And.intro E.rbHypophosphorylationClosed E.e2fTargetRepressionClosed))

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse