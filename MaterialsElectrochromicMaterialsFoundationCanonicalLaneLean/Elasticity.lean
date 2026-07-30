import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure ElasticityPackage where
  elasticConstants : Prop
  stressStrainRelation : Prop
  fractureToughness : Prop
  cyclicLoading : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  elasticConstantsClosed : E.elasticConstants
  stressStrainRelationClosed : E.stressStrainRelation
  fractureToughnessClosed : E.fractureToughness
  cyclicLoadingClosed : E.cyclicLoading

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.elasticConstants ∧ E.stressStrainRelation ∧ E.fractureToughness ∧ E.cyclicLoading

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.elasticConstantsClosed (And.intro Ev.stressStrainRelationClosed (And.intro Ev.fractureToughnessClosed Ev.cyclicLoadingClosed))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse