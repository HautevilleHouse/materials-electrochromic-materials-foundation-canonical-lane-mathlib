import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure ElectrochromicMaterialPackage where
  opticalModulation : Prop
  ionInsertion : Prop
  colorationEfficiency : Prop
  cyclingStability : Prop

structure ElectrochromicMaterialEvidence (E : ElectrochromicMaterialPackage) where
  opticalModulationClosed : E.opticalModulation
  ionInsertionClosed : E.ionInsertion
  colorationEfficiencyClosed : E.colorationEfficiency
  cyclingStabilityClosed : E.cyclingStability

def ElectrochromicMaterialClosed (E : ElectrochromicMaterialPackage) : Prop :=
  E.opticalModulation ∧ E.ionInsertion ∧ E.colorationEfficiency ∧ E.cyclingStability

theorem electrochromic_material_closed_from_evidence (E : ElectrochromicMaterialPackage) (Ev : ElectrochromicMaterialEvidence E) :
    ElectrochromicMaterialClosed E := by
  exact And.intro Ev.opticalModulationClosed (And.intro Ev.ionInsertionClosed (And.intro Ev.colorationEfficiencyClosed Ev.cyclingStabilityClosed))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse