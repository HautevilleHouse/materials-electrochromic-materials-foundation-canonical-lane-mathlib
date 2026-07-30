import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure DeviceDegradationPackage where
  cycleLife : Prop
  chargeTrapping : Prop
  delamination : Prop
  electrolyteDecomposition : Prop
  cycleLifeTerm : cycleLife
  chargeTrappingTerm : chargeTrapping
  delaminationTerm : delamination
  electrolyteDecompositionTerm : electrolyteDecomposition

structure DeviceDegradationEvidence (D : DeviceDegradationPackage) where
  cycleLifeClosed : D.cycleLife
  chargeTrappingClosed : D.chargeTrapping
  delaminationClosed : D.delamination
  electrolyteDecompositionClosed : D.electrolyteDecomposition

def DeviceDegradationClosed (D : DeviceDegradationPackage) : Prop :=
  D.cycleLife ∧ D.chargeTrapping ∧ D.delamination ∧ D.electrolyteDecomposition

theorem device_degradation_closed_from_evidence
    (D : DeviceDegradationPackage) (Ev : DeviceDegradationEvidence D) :
    DeviceDegradationClosed D := by
  exact And.intro Ev.cycleLifeClosed
    (And.intro Ev.chargeTrappingClosed
      (And.intro Ev.delaminationClosed Ev.electrolyteDecompositionClosed))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse