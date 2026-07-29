import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GranularLane (X : Type u) [Add X] [Sub X] where
  state : X
  delta : X
  projection : X → X
  projectionIdempotent : ∀ x, projection (projection x) = projection x
  xNext : X := state + projection delta
  carriedComponent : X := delta - projection delta

structure LaneDecomposition (X : Type u) [Add X] [Sub X] where
  components : List (GranularLane X)
  consistency : ∀ (l1 l2 : GranularLane X), l1.state = l2.state → l1.delta = l2.delta → l1.projection = l2.projection

def LaneDecompositionClosed (X : Type u) [Add X] [Sub X] (D : LaneDecomposition X) : Prop :=
  D.consistency

theorem lane_decomposition_closed_from_evidence (X : Type u) [Add X] [Sub X] (D : LaneDecomposition X) (h : D.consistency) : LaneDecompositionClosed X D :=
  h

end GranularityCanonicalLaneLean
end HautevilleHouse