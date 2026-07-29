import CellBiologyCellSenescenceLemmaCanonicalLaneLean.SenescenceEvidenceTerms

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure SenescenceProofCertificate (R : ReplicativeCapacityPackage) (C : SenescenceAdmittedObject) where
  evidence : SenescenceEvidenceTerms R C
  certificateClosed : C.isSenescent

theorem senescence_proof_certificate_valid (R : ReplicativeCapacityPackage) (C : SenescenceAdmittedObject)
    (P : SenescenceProofCertificate R C) : C.isSenescent := by
  exact P.certificateClosed

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse