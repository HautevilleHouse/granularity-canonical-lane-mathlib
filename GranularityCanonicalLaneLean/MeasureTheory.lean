import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure MeasureSpace where
  carrier : Type u
  sigmaAlgebra : Set (Set carrier)
  measure : carrier → ℝ

structure MeasureGranularity where
  underlyingSet : Type u
  partition : List (Set underlyingSet)
  cellWeights : List ℝ
  partitionFinite : Prop
  weightsSumOne : Prop
  partitionFiniteTerm : partitionFinite
  weightsSumOneTerm : weightsSumOne

def MeasureGranularityClosed (M : MeasureGranularity) : Prop :=
  M.partitionFinite ∧ M.weightsSumOne

theorem measure_granularity_closed_from_evidence (M : MeasureGranularity) 
    (hfin : M.partitionFinite) (hsum : M.weightsSumOne) : MeasureGranularityClosed M := by
  exact And.intro hfin hsum

end GranularityCanonicalLaneLean
end HautevilleHouse