import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure ElectrodeLayer where
  substrate : Type
  activeMaterial : Type
  ionStorageCapacity : Prop
  opticalModulation : Prop

structure ElectrodeLayerEvidence (E : ElectrodeLayer) where
  ionStorageCapacityClosed : E.ionStorageCapacity
  opticalModulationClosed : E.opticalModulation

def ElectrodeLayerClosed (E : ElectrodeLayer) : Prop :=
  E.ionStorageCapacity ∧ E.opticalModulation

theorem electrode_layer_closed_from_evidence (E : ElectrodeLayer) (ev : ElectrodeLayerEvidence E) :
    ElectrodeLayerClosed E := by
  exact And.intro ev.ionStorageCapacityClosed ev.opticalModulationClosed

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse