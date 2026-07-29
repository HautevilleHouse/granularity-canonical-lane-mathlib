import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GranularitySpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  borel : MeasurableSpace carrier := by exact MeasureTheory.instMeasurableSpace

def allScales (X : Type u) [TopologicalSpace X] : Set (Set X) := Set.univ

-- granularity structure: a collection of measurable sets partitioned by scale
structure GranularityStructure (X : Type u) [TopologicalSpace X] where
  scales : Set (Set X)
  scaleIndex : Set X → ℕ
  measureFamily : (s : Set X) → ℝ≥0
  scaleIndexZero : scaleIndex ∅ = 0

end GranularityCanonicalLaneLean
end HautevilleHouse