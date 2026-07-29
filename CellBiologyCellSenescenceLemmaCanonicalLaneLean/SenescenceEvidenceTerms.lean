import CellBiologyCellSenescenceLemmaCanonicalLaneLean.ReplicativeCapacity

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure SenescenceEvidenceTerms (R : ReplicativeCapacityPackage) (C : SenescenceAdmittedObject) where
  p53Evidence : C.cell.p53Activity
  p16Evidence : C.cell.p16Activity
  telomereShortEnough : C.cell.telomereLength < 5.0  -- arbitrary threshold
  replicativeExhausted : C.replicativeLimit

theorem senescence_evidence_closes (R : ReplicativeCapacityPackage) (C : SenescenceAdmittedObject)
    (E : SenescenceEvidenceTerms R C) : C.isSenescent := by
  exact C.conclusion

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse