import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure CrystalStructurePackage where
  latticeType : Prop
  unitCellVolume : Prop
  symmetryGroup : Prop
  bandStructure : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  latticeTypeClosed : C.latticeType
  unitCellVolumeClosed : C.unitCellVolume
  symmetryGroupClosed : C.symmetryGroup
  bandStructureClosed : C.bandStructure

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.latticeType ∧ C.unitCellVolume ∧ C.symmetryGroup ∧ C.bandStructure

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage) (E : CrystalStructureEvidence C) :
    CrystalStructureClosed C := by
  exact And.intro E.latticeTypeClosed (And.intro E.unitCellVolumeClosed (And.intro E.symmetryGroupClosed E.bandStructureClosed))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse