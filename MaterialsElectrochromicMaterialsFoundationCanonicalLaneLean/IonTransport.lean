import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure IonTransportPackage where
  diffusionCoefficient : Prop
  migrationDrivingForce : Prop
  interfacialTransfer : Prop
  concentrationProfile : Prop

structure IonTransportEvidence (I : IonTransportPackage) where
  diffusionCoefficientClosed : I.diffusionCoefficient
  migrationDrivingForceClosed : I.migrationDrivingForce
  interfacialTransferClosed : I.interfacialTransfer
  concentrationProfileClosed : I.concentrationProfile

def IonTransportClosed (I : IonTransportPackage) : Prop :=
  I.diffusionCoefficient ∧ I.migrationDrivingForce ∧ I.interfacialTransfer ∧ I.concentrationProfile

theorem ion_transport_closed_from_evidence (I : IonTransportPackage) (E : IonTransportEvidence I) :
    IonTransportClosed I := by
  exact And.intro E.diffusionCoefficientClosed (And.intro E.migrationDrivingForceClosed (And.intro E.interfacialTransferClosed E.concentrationProfileClosed))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse