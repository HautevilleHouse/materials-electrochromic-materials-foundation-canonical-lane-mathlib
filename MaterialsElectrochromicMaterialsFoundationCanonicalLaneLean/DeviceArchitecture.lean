import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure DeviceArchitecture where
  transparentConductor : Prop
  electrolyteLayer : Prop
  ionStorageLayer : Prop
  electrochromicLayer : Prop
  encapsulation : Prop

structure DeviceArchitectureEvidence (D : DeviceArchitecture) where
  transparentConductorClosed : D.transparentConductor
  electrolyteLayerClosed : D.electrolyteLayer
  ionStorageLayerClosed : D.ionStorageLayer
  electrochromicLayerClosed : D.electrochromicLayer
  encapsulationClosed : D.encapsulation

def DeviceArchitectureClosed (D : DeviceArchitecture) : Prop :=
  D.transparentConductor ∧ D.electrolyteLayer ∧ D.ionStorageLayer ∧
  D.electrochromicLayer ∧ D.encapsulation

theorem device_architecture_closed_from_evidence (D : DeviceArchitecture) (ev : DeviceArchitectureEvidence D) :
    DeviceArchitectureClosed D := by
  exact And.intro ev.transparentConductorClosed
    (And.intro ev.electrolyteLayerClosed
      (And.intro ev.ionStorageLayerClosed
        (And.intro ev.electrochromicLayerClosed ev.encapsulationClosed)))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse