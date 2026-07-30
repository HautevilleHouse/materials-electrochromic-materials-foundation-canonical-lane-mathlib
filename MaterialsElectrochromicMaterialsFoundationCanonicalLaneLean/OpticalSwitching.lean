import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure OpticalSwitching where
  colorationEfficiency : Prop
  switchingTime : Prop
  opticalContrast : Prop
  cyclingStability : Prop

structure OpticalSwitchingEvidence (O : OpticalSwitching) where
  colorationEfficiencyClosed : O.colorationEfficiency
  switchingTimeClosed : O.switchingTime
  opticalContrastClosed : O.opticalContrast
  cyclingStabilityClosed : O.cyclingStability

def OpticalSwitchingClosed (O : OpticalSwitching) : Prop :=
  O.colorationEfficiency ∧ O.switchingTime ∧ O.opticalContrast ∧ O.cyclingStability

theorem optical_switching_closed_from_evidence (O : OpticalSwitching) (ev : OpticalSwitchingEvidence O) :
    OpticalSwitchingClosed O := by
  exact And.intro ev.colorationEfficiencyClosed
    (And.intro ev.switchingTimeClosed
      (And.intro ev.opticalContrastClosed ev.cyclingStabilityClosed))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse