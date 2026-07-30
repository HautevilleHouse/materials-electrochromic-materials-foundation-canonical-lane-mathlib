import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure IonInsertionExtractionPackage where
  ionSpecies : Type
  insertionSite : Type
  diffusionCoefficient : Prop
  insertionCapacity : Prop
  cyclicVoltammetry : Prop
  diffusionCoefficientTerm : diffusionCoefficient
  insertionCapacityTerm : insertionCapacity
  cyclicVoltammetryTerm : cyclicVoltammetry

structure IonInsertionExtractionEvidence (I : IonInsertionExtractionPackage) where
  diffusionCoefficientClosed : I.diffusionCoefficient
  insertionCapacityClosed : I.insertionCapacity
  cyclicVoltammetryClosed : I.cyclicVoltammetry

def IonInsertionExtractionClosed (I : IonInsertionExtractionPackage) : Prop :=
  I.diffusionCoefficient ∧ I.insertionCapacity ∧ I.cyclicVoltammetry

theorem ion_insertion_extraction_closed_from_evidence
    (I : IonInsertionExtractionPackage) (Ev : IonInsertionExtractionEvidence I) :
    IonInsertionExtractionClosed I := by
  exact And.intro Ev.diffusionCoefficientClosed
    (And.intro Ev.insertionCapacityClosed Ev.cyclicVoltammetryClosed)

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse