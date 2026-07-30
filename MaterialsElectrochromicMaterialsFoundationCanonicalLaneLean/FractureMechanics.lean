import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure FracturePackage where
  crackPropagation : Prop
  stressIntensityFactor : Prop
  fractureToughness : Prop
  fatigueLife : Prop
  failureCriteria : Prop

structure FractureEvidence (F : FracturePackage) where
  crackPropagationClosed : F.crackPropagation
  stressIntensityFactorClosed : F.stressIntensityFactor
  fractureToughnessClosed : F.fractureToughness
  fatigueLifeClosed : F.fatigueLife
  failureCriteriaClosed : F.failureCriteria

def FractureClosed (F : FracturePackage) : Prop :=
  F.crackPropagation ∧ F.stressIntensityFactor ∧ F.fractureToughness ∧ F.fatigueLife ∧ F.failureCriteria

theorem fracture_closed_from_evidence (F : FracturePackage)
    (E : FractureEvidence F) : FractureClosed F := by
  exact And.intro E.crackPropagationClosed
    (And.intro E.stressIntensityFactorClosed
      (And.intro E.fractureToughnessClosed
        (And.intro E.fatigueLifeClosed E.failureCriteriaClosed)))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse