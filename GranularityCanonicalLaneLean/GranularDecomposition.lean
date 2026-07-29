import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GranularDecompositionPackage where
  componentFamily : Type u
  subobjectRelation : Prop
  decompositionRefinement : Prop
  joinMeetClosure : Prop
  subobjectRelationTerm : subobjectRelation
  decompositionRefinementTerm : decompositionRefinement
  joinMeetClosureTerm : joinMeetClosure

def GranularDecompositionClosed (G : GranularDecompositionPackage) : Prop :=
  G.subobjectRelation ∧ G.decompositionRefinement ∧ G.joinMeetClosure

structure GranularDecompositionEvidence (G : GranularDecompositionPackage) where
  subobjectRelationClosed : G.subobjectRelation
  decompositionRefinementClosed : G.decompositionRefinement
  joinMeetClosureClosed : G.joinMeetClosure

theorem granular_decomposition_closed_from_evidence
    (G : GranularDecompositionPackage) (E : GranularDecompositionEvidence G) :
    GranularDecompositionClosed G := by
  exact And.intro E.subobjectRelationClosed
    (And.intro E.decompositionRefinementClosed E.joinMeetClosureClosed)

end GranularityCanonicalLaneLean
end HautevilleHouse