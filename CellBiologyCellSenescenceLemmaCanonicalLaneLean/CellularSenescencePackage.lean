import CellBiologyCellSenescenceLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

structure CellularSenescencePackage where
  cellType : Type
  senescenceMarker : Prop
  telomereAttrition : Prop
  dnaDamageResponse : Prop
  saspSecretion : Prop
  cellCycleArrest : Prop
  apoptosisResistance : Prop

structure CellularSenescenceEvidence (P : CellularSenescencePackage) where
  senescenceMarkerClosed : P.senescenceMarker
  telomereAttritionClosed : P.telomereAttrition
  dnaDamageResponseClosed : P.dnaDamageResponse
  saspSecretionClosed : P.saspSecretion
  cellCycleArrestClosed : P.cellCycleArrest
  apoptosisResistanceClosed : P.apoptosisResistance

def CellularSenescenceClosed (P : CellularSenescencePackage) : Prop :=
  P.senescenceMarker ∧ P.telomereAttrition ∧ P.dnaDamageResponse ∧
  P.saspSecretion ∧ P.cellCycleArrest ∧ P.apoptosisResistance

theorem cellular_senescence_closed_from_evidence (P : CellularSenescencePackage)
    (E : CellularSenescenceEvidence P) : CellularSenescenceClosed P := by
  exact And.intro E.senescenceMarkerClosed
    (And.intro E.telomereAttritionClosed
      (And.intro E.dnaDamageResponseClosed
        (And.intro E.saspSecretionClosed
          (And.intro E.cellCycleArrestClosed E.apoptosisResistanceClosed))))

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse