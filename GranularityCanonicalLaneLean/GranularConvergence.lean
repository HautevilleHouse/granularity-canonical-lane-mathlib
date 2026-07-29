import HautevilleHouse.GranularityCanonicalLaneLean.GranularPartition

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GranularConvergencePackage where
  sequenceType : Type u
  limitObject : Type v
  granularCondition : Prop
  rateFunction : Prop
  stabilityUnderRefinement : Prop

structure GranularConvergenceEvidence (C : GranularConvergencePackage) where
  granularConditionClosed : C.granularCondition
  rateFunctionClosed : C.rateFunction
  stabilityUnderRefinementClosed : C.stabilityUnderRefinement

def GranularConvergenceClosed (C : GranularConvergencePackage) : Prop :=
  C.granularCondition ∧ C.rateFunction ∧ C.stabilityUnderRefinement

theorem granular_convergence_closed_from_evidence (C : GranularConvergencePackage)
    (E : GranularConvergenceEvidence C) : GranularConvergenceClosed C := by
  exact And.intro E.granularConditionClosed
    (And.intro E.rateFunctionClosed E.stabilityUnderRefinementClosed)

end GranularityCanonicalLaneLean
end HautevilleHouse