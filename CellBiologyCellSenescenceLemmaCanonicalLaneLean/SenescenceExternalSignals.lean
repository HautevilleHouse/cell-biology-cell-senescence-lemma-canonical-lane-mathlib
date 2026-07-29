import canonicalLaneMathlib.AdmissibleClass

/-!
# Senescence External Signals Package
-/

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure SenescenceExternalSignalsPackage (O : SenescenceAdmittedObject) where
  inflammatoryCytokines : Prop
  growthFactorDeprivation : Prop
  oxidativeStress : Prop
  matrixRemodeling : Prop

structure SenescenceExternalSignalsEvidence (O : SenescenceAdmittedObject)
    (S : SenescenceExternalSignalsPackage O) where
  inflammatoryCytokinesClosed : S.inflammatoryCytokines
  growthFactorDeprivationClosed : S.growthFactorDeprivation
  oxidativeStressClosed : S.oxidativeStress
  matrixRemodelingClosed : S.matrixRemodeling

def SenescenceExternalSignalsClosed (O : SenescenceAdmittedObject)
    (S : SenescenceExternalSignalsPackage O) : Prop :=
  S.inflammatoryCytokines ∧ S.growthFactorDeprivation ∧
  S.oxidativeStress ∧ S.matrixRemodeling

theorem senescence_external_signals_closed_from_evidence
    (O : SenescenceAdmittedObject) (S : SenescenceExternalSignalsPackage O)
    (E : SenescenceExternalSignalsEvidence O S) :
    SenescenceExternalSignalsClosed O S := by
  exact And.intro E.inflammatoryCytokinesClosed
    (And.intro E.growthFactorDeprivationClosed
      (And.intro E.oxidativeStressClosed E.matrixRemodelingClosed))

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse
