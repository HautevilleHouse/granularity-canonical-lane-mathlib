import canonicalLaneMathlib.AdmissibleClass
import GranularityCanonicalLaneLean.RefinementSystems

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure CoherenceBridge (R : RefinementSystem) where
  sourceLevel : R.baseObject
  targetLevel : R.baseObject
  coherenceCondition : R.refinementMap sourceLevel = R.refinementMap targetLevel
  sourceClosed : sourceLevel ∈ R.fixedPointSubset
  targetClosed : targetLevel ∈ R.fixedPointSubset

structure CoherenceBridgeEvidence (R : RefinementSystem) (B : CoherenceBridge R) where
  coherenceConditionClosed : B.coherenceCondition
  sourceClosedClosed : B.sourceClosed
  targetClosedClosed : B.targetClosed

def CoherenceBridgeClosed (R : RefinementSystem) (B : CoherenceBridge R) : Prop :=
  B.coherenceCondition ∧ B.sourceClosed ∧ B.targetClosed

theorem coherence_bridge_closed_from_evidence (R : RefinementSystem) (B : CoherenceBridge R) (E : CoherenceBridgeEvidence R B) : CoherenceBridgeClosed R B := by
  exact And.intro E.coherenceConditionClosed (And.intro E.sourceClosedClosed E.targetClosedClosed)

end GranularityCanonicalLaneLean
end HautevilleHouse