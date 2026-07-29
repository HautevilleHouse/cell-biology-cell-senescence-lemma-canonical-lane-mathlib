import CellBiologyCellSenescenceLemmaCanonicalLaneLean.CellularSenescencePackage

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure SenescenceSignalingPathwaysPackage
    (P : CellularSenescencePackage) where
  p53Signaling : Prop
  p16Ink4aSignaling : Prop
  nfkbPathway : Prop
  il6Sasp : Prop
  rosProduction : Prop

structure SenescenceSignalingPathwaysEvidence
    {P : CellularSenescencePackage}
    (S : SenescenceSignalingPathwaysPackage P) where
  p53SignalingClosed : S.p53Signaling
  p16Ink4aSignalingClosed : S.p16Ink4aSignaling
  nfkbPathwayClosed : S.nfkbPathway
  il6SaspClosed : S.il6Sasp
  rosProductionClosed : S.rosProduction

def SenescenceSignalingPathwaysClosed {P : CellularSenescencePackage}
    (S : SenescenceSignalingPathwaysPackage P) : Prop :=
  S.p53Signaling ∧ S.p16Ink4aSignaling ∧ S.nfkbPathway ∧
  S.il6Sasp ∧ S.rosProduction

theorem senescence_signaling_pathways_closed_from_evidence
    {P : CellularSenescencePackage}
    (S : SenescenceSignalingPathwaysPackage P)
    (E : SenescenceSignalingPathwaysEvidence S) :
    SenescenceSignalingPathwaysClosed S := by
  exact And.intro E.p53SignalingClosed
    (And.intro E.p16Ink4aSignalingClosed
      (And.intro E.nfkbPathwayClosed
        (And.intro E.il6SaspClosed E.rosProductionClosed)))

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse