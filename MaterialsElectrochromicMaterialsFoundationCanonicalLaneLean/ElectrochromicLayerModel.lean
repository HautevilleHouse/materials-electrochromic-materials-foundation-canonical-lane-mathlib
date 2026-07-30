import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure ElectrochromicLayerPackage where
  substrate : Type u
  electrolyte : Type v
  electrochromicFilm : Type w
  ionInsertion : Prop
  opticalModulation : Prop
  cycleStability : Prop

structure ElectrochromicLayerEvidence (P : ElectrochromicLayerPackage) where
  ionInsertionClosed : P.ionInsertion
  opticalModulationClosed : P.opticalModulation
  cycleStabilityClosed : P.cycleStability

def ElectrochromicLayerClosed (P : ElectrochromicLayerPackage) : Prop :=
  P.ionInsertion ∧ P.opticalModulation ∧ P.cycleStability

theorem electrochromic_layer_closed_from_evidence
    (P : ElectrochromicLayerPackage) (E : ElectrochromicLayerEvidence P) :
    ElectrochromicLayerClosed P := by
  exact And.intro E.ionInsertionClosed
    (And.intro E.opticalModulationClosed E.cycleStabilityClosed)

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse
