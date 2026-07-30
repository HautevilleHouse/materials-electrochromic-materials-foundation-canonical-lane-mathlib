import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure OpticalModelPackage where
  absorptionSpectrum : Prop
  refractiveIndex : Prop
  colorationEfficiency : Prop
  opticalBandgap : Prop

structure OpticalModelEvidence (O : OpticalModelPackage) where
  absorptionSpectrumClosed : O.absorptionSpectrum
  refractiveIndexClosed : O.refractiveIndex
  colorationEfficiencyClosed : O.colorationEfficiency
  opticalBandgapClosed : O.opticalBandgap

def OpticalModelClosed (O : OpticalModelPackage) : Prop :=
  O.absorptionSpectrum ∧ O.refractiveIndex ∧ O.colorationEfficiency ∧ O.opticalBandgap

theorem optical_model_closed_from_evidence (O : OpticalModelPackage) (E : OpticalModelEvidence O) :
    OpticalModelClosed O := by
  exact And.intro E.absorptionSpectrumClosed (And.intro E.refractiveIndexClosed (And.intro E.colorationEfficiencyClosed E.opticalBandgapClosed))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse