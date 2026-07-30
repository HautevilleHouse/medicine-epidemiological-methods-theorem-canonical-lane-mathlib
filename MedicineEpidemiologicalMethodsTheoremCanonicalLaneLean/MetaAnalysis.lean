import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean

structure MetaAnalysisPackage where
  fixedEffectModel : Prop
  randomEffectModel : Prop
  heterogeneityMeasure : Prop
  publicationBias : Prop
  forestPlot : Prop

structure MetaAnalysisEvidence (M : MetaAnalysisPackage) where
  fixedEffectModelClosed : M.fixedEffectModel
  randomEffectModelClosed : M.randomEffectModel
  heterogeneityMeasureClosed : M.heterogeneityMeasure
  publicationBiasClosed : M.publicationBias
  forestPlotClosed : M.forestPlot

def MetaAnalysisClosed (M : MetaAnalysisPackage) : Prop :=
  M.fixedEffectModel ∧ M.randomEffectModel ∧ M.heterogeneityMeasure ∧ M.publicationBias ∧ M.forestPlot

theorem meta_analysis_closed_from_evidence (M : MetaAnalysisPackage) (E : MetaAnalysisEvidence M) : MetaAnalysisClosed M := by
  exact And.intro E.fixedEffectModelClosed (And.intro E.randomEffectModelClosed (And.intro E.heterogeneityMeasureClosed (And.intro E.publicationBiasClosed E.forestPlotClosed)))

end HautevilleHouse
end MedicineEpidemiologicalMethodsTheoremCanonicalLaneLean
