import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure SenescenceAssociatedSecretoryPhenotypePackage where
  proinflammatoryCytokines : Prop
  growthFactors : Prop
  chemokines : Prop
  matrixMetalloproteinases : Prop

structure SenescenceAssociatedSecretoryPhenotypeEvidence (S : SenescenceAssociatedSecretoryPhenotypePackage) where
  proinflammatoryCytokinesClosed : S.proinflammatoryCytokines
  growthFactorsClosed : S.growthFactors
  chemokinesClosed : S.chemokines
  matrixMetalloproteinasesClosed : S.matrixMetalloproteinases

def SenescenceAssociatedSecretoryPhenotypeClosed (S : SenescenceAssociatedSecretoryPhenotypePackage) : Prop :=
  S.proinflammatoryCytokines ∧ S.growthFactors ∧ S.chemokines ∧ S.matrixMetalloproteinases

theorem senescence_associated_secretory_phenotype_closed_from_evidence (S : SenescenceAssociatedSecretoryPhenotypePackage) (E : SenescenceAssociatedSecretoryPhenotypeEvidence S) : SenescenceAssociatedSecretoryPhenotypeClosed S := by
  exact And.intro E.proinflammatoryCytokinesClosed (And.intro E.growthFactorsClosed (And.intro E.chemokinesClosed E.matrixMetalloproteinasesClosed))

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse