import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellSenescenceLemmaCanonicalLaneLean.CellSenescenceAdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure SenescenceInductionPackage where
  telomereShortening : Prop
  dnaDamageSignaling : Prop
  oncogenicStress : Prop
  oxidativeStress : Prop
  mitochondrialDysfunction : Prop
  epigeneticChanges : Prop

structure SenescenceInductionEvidence (S : SenescenceInductionPackage) where
  telomereShorteningClosed : S.telomereShortening
  dnaDamageSignalingClosed : S.dnaDamageSignaling
  oncogenicStressClosed : S.oncogenicStress
  oxidativeStressClosed : S.oxidativeStress
  mitochondrialDysfunctionClosed : S.mitochondrialDysfunction
  epigeneticChangesClosed : S.epigeneticChanges

def SenescenceInductionClosed (S : SenescenceInductionPackage) : Prop :=
  S.telomereShortening ∧ S.dnaDamageSignaling ∧ S.oncogenicStress ∧
  S.oxidativeStress ∧ S.mitochondrialDysfunction ∧ S.epigeneticChanges

theorem senescence_induction_closed_from_evidence (S : SenescenceInductionPackage)
    (E : SenescenceInductionEvidence S) : SenescenceInductionClosed S := by
  exact And.intro E.telomereShorteningClosed
    (And.intro E.dnaDamageSignalingClosed
      (And.intro E.oncogenicStressClosed
        (And.intro E.oxidativeStressClosed
          (And.intro E.mitochondrialDysfunctionClosed
            E.epigeneticChangesClosed))))

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse