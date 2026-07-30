import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure DeviceOperationPackage where
  voltageWindow : Prop
  chargeInserted : Prop
  transmittanceChange : Prop
  responseTime : Prop

structure DeviceOperationEvidence (D : DeviceOperationPackage) where
  voltageWindowClosed : D.voltageWindow
  chargeInsertedClosed : D.chargeInserted
  transmittanceChangeClosed : D.transmittanceChange
  responseTimeClosed : D.responseTime

def DeviceOperationClosed (D : DeviceOperationPackage) : Prop :=
  D.voltageWindow ∧ D.chargeInserted ∧ D.transmittanceChange ∧ D.responseTime

theorem device_operation_closed_from_evidence
    (D : DeviceOperationPackage) (E : DeviceOperationEvidence D) :
    DeviceOperationClosed D := by
  exact And.intro E.voltageWindowClosed
    (And.intro E.chargeInsertedClosed
      (And.intro E.transmittanceChangeClosed E.responseTimeClosed))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse
