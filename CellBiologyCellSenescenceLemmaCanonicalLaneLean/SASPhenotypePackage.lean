import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure SASPhenotypePackage where
  il6Secretion : ℝ
  il8Secretion : ℝ
  mmpSecretion : ℝ
  growthFactorSecretion : ℝ
  paracrineSignaling : Prop
  immuneCellRecruitment : Prop
  tissueRemodeling : Prop

structure SASPhenotypeEvidence (S : SASPhenotypePackage) where
  il6SecretionPositive : S.il6Secretion > 0
  il8SecretionPositive : S.il8Secretion > 0
  mmpSecretionPositive : S.mmpSecretion > 0
  growthFactorSecretionPositive : S.growthFactorSecretion > 0
  paracrineSignalingActive : S.paracrineSignaling
  immuneCellRecruitmentActive : S.immuneCellRecruitment
  tissueRemodelingActive : S.tissueRemodeling

def SASPhenotypeClosed (S : SASPhenotypePackage) : Prop :=
  S.paracrineSignaling ∧ S.immuneCellRecruitment ∧ S.tissueRemodeling

theorem sas_phenotype_closed_from_evidence (S : SASPhenotypePackage)
    (E : SASPhenotypeEvidence S) : SASPhenotypeClosed S := by
  exact And.intro E.paracrineSignalingActive
    (And.intro E.immuneCellRecruitmentActive E.tissueRemodelingActive)

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse
