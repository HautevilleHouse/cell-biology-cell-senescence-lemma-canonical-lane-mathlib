import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure SASPPackage where
  il6secretion : Prop
  il8secretion : Prop
  mmpSecretion : Prop
  igfbpSecretion : Prop
  paracrineSignaling : Prop

structure SASPEvidence (S : SASPPackage) where
  il6secretionClosed : S.il6secretion
  il8secretionClosed : S.il8secretion
  mmpSecretionClosed : S.mmpSecretion
  igfbpSecretionClosed : S.igfbpSecretion
  paracrineSignalingClosed : S.paracrineSignaling

def SASPClosed (S : SASPPackage) : Prop :=
  S.il6secretion ∧ S.il8secretion ∧ S.mmpSecretion ∧ S.igfbpSecretion ∧ S.paracrineSignaling

theorem sasp_closed_from_evidence (S : SASPPackage) (E : SASPEvidence S) :
    SASPClosed S := by
  exact And.intro E.il6secretionClosed
    (And.intro E.il8secretionClosed
      (And.intro E.mmpSecretionClosed
        (And.intro E.igfbpSecretionClosed E.paracrineSignalingClosed)))

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse