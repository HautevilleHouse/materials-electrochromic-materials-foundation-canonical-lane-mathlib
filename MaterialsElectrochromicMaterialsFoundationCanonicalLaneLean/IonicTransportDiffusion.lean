import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure IonicTransportPackage where
  diffusionCoefficients : Prop
  mobilityLaws : Prop
  concentrationProfile : Prop
  fieldDrift : Prop
  ionIntercalation : Prop

structure IonicTransportEvidence (I : IonicTransportPackage) where
  diffusionCoefficientsClosed : I.diffusionCoefficients
  mobilityLawsClosed : I.mobilityLaws
  concentrationProfileClosed : I.concentrationProfile
  fieldDriftClosed : I.fieldDrift
  ionIntercalationClosed : I.ionIntercalation

def IonicTransportClosed (I : IonicTransportPackage) : Prop :=
  I.diffusionCoefficients ∧ I.mobilityLaws ∧ I.concentrationProfile ∧ I.fieldDrift ∧ I.ionIntercalation

theorem ionic_transport_closed_from_evidence (I : IonicTransportPackage)
    (E : IonicTransportEvidence I) : IonicTransportClosed I := by
  exact And.intro E.diffusionCoefficientsClosed
    (And.intro E.mobilityLawsClosed
      (And.intro E.concentrationProfileClosed
        (And.intro E.fieldDriftClosed E.ionIntercalationClosed)))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse