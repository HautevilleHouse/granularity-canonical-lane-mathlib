import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GranularScalePackage where
  scaleSet : Type u
  orderRelation : Type v
  scaleRefinement : Prop
  scaleInclusion : Prop
  scaleBoundary : Prop
  scaleRefinementTerm : scaleRefinement
  scaleInclusionTerm : scaleInclusion
  scaleBoundaryTerm : scaleBoundary

def GranularScaleClosed (S : GranularScalePackage) : Prop :=
  S.scaleRefinement ∧ S.scaleInclusion ∧ S.scaleBoundary

structure GranularScaleEvidence (S : GranularScalePackage) where
  scaleRefinementClosed : S.scaleRefinement
  scaleInclusionClosed : S.scaleInclusion
  scaleBoundaryClosed : S.scaleBoundary

theorem granular_scale_closed_from_evidence
    (S : GranularScalePackage) (E : GranularScaleEvidence S) :
    GranularScaleClosed S := by
  exact And.intro E.scaleRefinementClosed
    (And.intro E.scaleInclusionClosed E.scaleBoundaryClosed)

end GranularityCanonicalLaneLean
end HautevilleHouse