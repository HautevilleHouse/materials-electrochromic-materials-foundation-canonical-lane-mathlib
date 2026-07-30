import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean

structure ElasticityPackage where
  stressStrainRelation : Prop
  elasticModuli : Prop
  compatibilityEquations : Prop
  boundaryConditions : Prop
  fractureCriterion : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressStrainRelationClosed : E.stressStrainRelation
  elasticModuliClosed : E.elasticModuli
  compatibilityEquationsClosed : E.compatibilityEquations
  boundaryConditionsClosed : E.boundaryConditions
  fractureCriterionClosed : E.fractureCriterion

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressStrainRelation ∧ E.elasticModuli ∧ E.compatibilityEquations ∧ E.boundaryConditions ∧ E.fractureCriterion

theorem elasticity_closed_from_evidence (E : ElasticityPackage)
    (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.stressStrainRelationClosed
    (And.intro Ev.elasticModuliClosed
      (And.intro Ev.compatibilityEquationsClosed
        (And.intro Ev.boundaryConditionsClosed Ev.fractureCriterionClosed)))

end MaterialsElectrochromicMaterialsFoundationCanonicalLaneLean
end HautevilleHouse