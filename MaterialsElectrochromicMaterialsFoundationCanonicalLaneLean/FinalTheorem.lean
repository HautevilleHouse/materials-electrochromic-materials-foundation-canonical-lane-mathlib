import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

def ConstrainedElectrochromicClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_electrochromic_endgame (A : AdmissibleClass) :
    ConstrainedElectrochromicClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse