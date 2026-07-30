import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure CycleLifeDegradation where
  capacityFade : Prop
  voltageDecay : Prop
  mechanicalFatigue : Prop
  parasiticReactions : Prop

structure CycleLifeDegradationEvidence (C : CycleLifeDegradation) where
  capacityFadeClosed : C.capacityFade
  voltageDecayClosed : C.voltageDecay
  mechanicalFatigueClosed : C.mechanicalFatigue
  parasiticReactionsClosed : C.parasiticReactions

def CycleLifeDegradationClosed (C : CycleLifeDegradation) : Prop :=
  C.capacityFade ∧ C.voltageDecay ∧ C.mechanicalFatigue ∧ C.parasiticReactions

theorem cycle_life_degradation_closed_from_evidence (C : CycleLifeDegradation) (ev : CycleLifeDegradationEvidence C) :
    CycleLifeDegradationClosed C := by
  exact And.intro ev.capacityFadeClosed
    (And.intro ev.voltageDecayClosed
      (And.intro ev.mechanicalFatigueClosed ev.parasiticReactionsClosed))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse