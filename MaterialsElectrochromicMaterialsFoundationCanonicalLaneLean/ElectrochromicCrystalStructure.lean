import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure CrystalStructurePackage where
  latticeType : Prop
  unitCellParams : Prop
  symmetryGroup : Prop
  defectSites : Prop
  coordinationEnvironment : Prop

structure CrystalStructureEvidence (C : CrystalStructurePackage) where
  latticeTypeClosed : C.latticeType
  unitCellParamsClosed : C.unitCellParams
  symmetryGroupClosed : C.symmetryGroup
  defectSitesClosed : C.defectSites
  coordinationEnvironmentClosed : C.coordinationEnvironment

def CrystalStructureClosed (C : CrystalStructurePackage) : Prop :=
  C.latticeType ∧ C.unitCellParams ∧ C.symmetryGroup ∧ C.defectSites ∧ C.coordinationEnvironment

theorem crystal_structure_closed_from_evidence (C : CrystalStructurePackage)
    (E : CrystalStructureEvidence C) : CrystalStructureClosed C := by
  exact And.intro E.latticeTypeClosed
    (And.intro E.unitCellParamsClosed
      (And.intro E.symmetryGroupClosed
        (And.intro E.defectSitesClosed E.coordinationEnvironmentClosed)))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse