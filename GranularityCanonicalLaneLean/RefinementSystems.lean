import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure RefinementSystem where
  baseObject : Type u
  refinementMap : baseObject → baseObject
  idempotentLaw : ∀ x, refinementMap (refinementMap x) = refinementMap x
  monotoneProperty : Prop
  fixedPointSubset : Set baseObject

structure RefinementSystemEvidence (R : RefinementSystem) where
  idempotentLawClosed : ∀ x, R.refinementMap (R.refinementMap x) = R.refinementMap x
  monotonePropertyClosed : R.monotoneProperty

def RefinementSystemClosed (R : RefinementSystem) : Prop :=
  (∀ x, R.refinementMap (R.refinementMap x) = R.refinementMap x) ∧ R.monotoneProperty

theorem refinement_system_closed_from_evidence (R : RefinementSystem) (E : RefinementSystemEvidence R) : RefinementSystemClosed R := by
  exact And.intro E.idempotentLawClosed E.monotonePropertyClosed

end GranularityCanonicalLaneLean
end HautevilleHouse