import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure PhaseDiagramPackage where
  phaseBoundaries : Prop
  gibbsFreeEnergy : Prop
  chemicalPotentials : Prop
  temperatureComposition : Prop
  metastablePhases : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesClosed : P.phaseBoundaries
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  chemicalPotentialsClosed : P.chemicalPotentials
  temperatureCompositionClosed : P.temperatureComposition
  metastablePhasesClosed : P.metastablePhases

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.gibbsFreeEnergy ∧ P.chemicalPotentials ∧ P.temperatureComposition ∧ P.metastablePhases

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed
    (And.intro E.gibbsFreeEnergyClosed
      (And.intro E.chemicalPotentialsClosed
        (And.intro E.temperatureCompositionClosed E.metastablePhasesClosed)))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse