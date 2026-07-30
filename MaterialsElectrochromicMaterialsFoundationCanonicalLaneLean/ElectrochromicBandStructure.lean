import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure ElectrochromicBandStructure where
  valenceBandMax : Prop
  conductionBandMin : Prop
  bandGap : Prop
  opticalTransition : Prop
  bandGapTerm : bandGap
  opticalTransitionTerm : opticalTransition

structure ElectrochromicBandStructureEvidence (E : ElectrochromicBandStructure) where
  bandGapClosed : E.bandGap
  opticalTransitionClosed : E.opticalTransition

def ElectrochromicBandStructureClosed (E : ElectrochromicBandStructure) : Prop :=
  E.bandGap ∧ E.opticalTransition

theorem electrochromic_band_structure_closed_from_evidence
    (E : ElectrochromicBandStructure) (Ev : ElectrochromicBandStructureEvidence E) :
    ElectrochromicBandStructureClosed E := by
  exact And.intro Ev.bandGapClosed Ev.opticalTransitionClosed

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse