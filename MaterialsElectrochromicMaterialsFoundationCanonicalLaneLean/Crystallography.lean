import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Prop
  bravaisLatticeClassified : Prop
  symmetryGroup : Prop
  diffractionPattern : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeStructureClosed : C.latticeStructure
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  symmetryGroupClosed : C.symmetryGroup
  diffractionPatternClosed : C.diffractionPattern

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeStructure ∧ C.bravaisLatticeClassified ∧ C.symmetryGroup ∧ C.diffractionPattern

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.latticeStructureClosed (And.intro E.bravaisLatticeClassifiedClosed (And.intro E.symmetryGroupClosed E.diffractionPatternClosed))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse