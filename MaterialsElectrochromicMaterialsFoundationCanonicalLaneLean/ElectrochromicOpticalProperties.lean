import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure OpticalPropertiesPackage where
  absorptionSpectrum : Prop
  refractiveIndex : Prop
  bandGap : Prop
  colorationEfficiency : Prop
  switchingTime : Prop

structure OpticalPropertiesEvidence (O : OpticalPropertiesPackage) where
  absorptionSpectrumClosed : O.absorptionSpectrum
  refractiveIndexClosed : O.refractiveIndex
  bandGapClosed : O.bandGap
  colorationEfficiencyClosed : O.colorationEfficiency
  switchingTimeClosed : O.switchingTime

def OpticalPropertiesClosed (O : OpticalPropertiesPackage) : Prop :=
  O.absorptionSpectrum ∧ O.refractiveIndex ∧ O.bandGap ∧ O.colorationEfficiency ∧ O.switchingTime

theorem optical_properties_closed_from_evidence (O : OpticalPropertiesPackage)
    (E : OpticalPropertiesEvidence O) : OpticalPropertiesClosed O := by
  exact And.intro E.absorptionSpectrumClosed
    (And.intro E.refractiveIndexClosed
      (And.intro E.bandGapClosed
        (And.intro E.colorationEfficiencyClosed E.switchingTimeClosed)))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse