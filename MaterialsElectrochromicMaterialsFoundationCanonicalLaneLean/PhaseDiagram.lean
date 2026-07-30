import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  thermodynamicStability : Prop
  coherencyStrain : Prop
  transformationKinetics : Prop
  compositionRange : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  thermodynamicStabilityClosed : P.thermodynamicStability
  coherencyStrainClosed : P.coherencyStrain
  transformationKineticsClosed : P.transformationKinetics
  compositionRangeClosed : P.compositionRange

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.thermodynamicStability ∧ P.coherencyStrain ∧ P.transformationKinetics ∧ P.compositionRange

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.thermodynamicStabilityClosed (And.intro E.coherencyStrainClosed (And.intro E.transformationKineticsClosed E.compositionRangeClosed))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse