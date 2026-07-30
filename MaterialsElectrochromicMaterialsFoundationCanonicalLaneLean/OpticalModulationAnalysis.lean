import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure OpticalModulationAnalysis where
  transmittanceChange : Prop
  reflectanceChange : Prop
  colorationEfficiency : Prop
  switchingTime : Prop
  transmittanceChangeTerm : transmittanceChange
  reflectanceChangeTerm : reflectanceChange
  colorationEfficiencyTerm : colorationEfficiency
  switchingTimeTerm : switchingTime

structure OpticalModulationEvidence (O : OpticalModulationAnalysis) where
  transmittanceChangeClosed : O.transmittanceChange
  reflectanceChangeClosed : O.reflectanceChange
  colorationEfficiencyClosed : O.colorationEfficiency
  switchingTimeClosed : O.switchingTime

def OpticalModulationClosed (O : OpticalModulationAnalysis) : Prop :=
  O.transmittanceChange ∧ O.reflectanceChange ∧ O.colorationEfficiency ∧ O.switchingTime

theorem optical_modulation_closed_from_evidence
    (O : OpticalModulationAnalysis) (Ev : OpticalModulationEvidence O) :
    OpticalModulationClosed O := by
  exact And.intro Ev.transmittanceChangeClosed
    (And.intro Ev.reflectanceChangeClosed
      (And.intro Ev.colorationEfficiencyClosed Ev.switchingTimeClosed))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse