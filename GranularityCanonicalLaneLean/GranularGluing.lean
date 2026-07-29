import canonicalLaneMathlib.AdmissibleClass
import GranularityCanonicalLaneLean.LaneDecomposition

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GluingData (X : Type u) [Add X] [Sub X] where
  lanes : List (GranularLane X)
  overlapCondition : ∀ (l1 l2 : GranularLane X), l1 ∈ lanes → l2 ∈ lanes → l1.state = l2.state → l1.projection = l2.projection
  gluingMap : X → X
  gluingConsistency : ∀ (l : GranularLane X), gluingMap l.state = l.state + l.projection l.delta

structure GluingEvidence (X : Type u) [Add X] [Sub X] (G : GluingData X) where
  overlapConditionClosed : G.overlapCondition
  gluingConsistencyClosed : G.gluingConsistency

def GluingClosed (X : Type u) [Add X] [Sub X] (G : GluingData X) : Prop :=
  G.overlapCondition ∧ G.gluingConsistency

theorem gluing_closed_from_evidence (X : Type u) [Add X] [Sub X] (G : GluingData X) (E : GluingEvidence X G) : GluingClosed X G := by
  exact And.intro E.overlapConditionClosed E.gluingConsistencyClosed

end GranularityCanonicalLaneLean
end HautevilleHouse