import canonicalLaneMathlib.AdmissibleClass

/-!
# Senescence Signaling Pathway Package
-/

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure SenescenceSignalingPathwayPackage (O : SenescenceAdmittedObject) where
  p53Activation : Prop
  p21Upregulation : Prop
  rbHypophosphorylation : Prop
  saspSecretion : Prop

structure SenescenceSignalingPathwayEvidence (O : SenescenceAdmittedObject)
    (P : SenescenceSignalingPathwayPackage O) where
  p53ActivationClosed : P.p53Activation
  p21UpregulationClosed : P.p21Upregulation
  rbHypophosphorylationClosed : P.rbHypophosphorylation
  saspSecretionClosed : P.saspSecretion

def SenescenceSignalingPathwayClosed (O : SenescenceAdmittedObject)
    (P : SenescenceSignalingPathwayPackage O) : Prop :=
  P.p53Activation ∧ P.p21Upregulation ∧ P.rbHypophosphorylation ∧ P.saspSecretion

theorem senescence_signaling_pathway_closed_from_evidence
    (O : SenescenceAdmittedObject) (P : SenescenceSignalingPathwayPackage O)
    (E : SenescenceSignalingPathwayEvidence O P) :
    SenescenceSignalingPathwayClosed O P := by
  exact And.intro E.p53ActivationClosed
    (And.intro E.p21UpregulationClosed
      (And.intro E.rbHypophosphorylationClosed E.saspSecretionClosed))

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse
