import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  thermodynamicVariables : Prop
  phaseBoundaries : Prop
  criticalPoints : Prop
  phaseTransitionsClassified : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  thermodynamicVariablesClosed : P.thermodynamicVariables
  phaseBoundariesClosed : P.phaseBoundaries
  criticalPointsClosed : P.criticalPoints
  phaseTransitionsClassifiedClosed : P.phaseTransitionsClassified

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.thermodynamicVariables ∧ P.phaseBoundaries ∧ P.criticalPoints ∧ P.phaseTransitionsClassified

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.thermodynamicVariablesClosed (And.intro E.phaseBoundariesClosed (And.intro E.criticalPointsClosed E.phaseTransitionsClassifiedClosed))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse