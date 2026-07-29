import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure TelomereAttritionDamage where
  telomereShortening : Prop
  telomereDysfunction : Prop
  replicativeSenescence : Prop
  dnARepairFoci : Prop

structure TelomereAttritionEvidence (T : TelomereAttritionDamage) where
  telomereShorteningClosed : T.telomereShortening
  telomereDysfunctionClosed : T.telomereDysfunction
  replicativeSenescenceClosed : T.replicativeSenescence
  dnARepairFociClosed : T.dnARepairFoci

def TelomereAttritionClosed (T : TelomereAttritionDamage) : Prop :=
  T.telomereShortening ∧ T.telomereDysfunction ∧
  T.replicativeSenescence ∧ T.dnARepairFoci

theorem telomere_attrition_closed_from_evidence
    (T : TelomereAttritionDamage) (E : TelomereAttritionEvidence T) :
    TelomereAttritionClosed T := by
  exact And.intro E.telomereShorteningClosed
    (And.intro E.telomereDysfunctionClosed
      (And.intro E.replicativeSenescenceClosed E.dnARepairFociClosed))

end HautevilleHouse
end CellBiologyCellSenescenceLemmaCanonicalLaneLean