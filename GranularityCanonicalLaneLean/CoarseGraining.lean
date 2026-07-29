import HautevilleHouse.GranularityCanonicalLaneLean.GranularityCore

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure CoarseGraining {X : Type u} [TopologicalSpace X]
    (G : GranularityStructure X) where
  coarseScale : ℕ
  coarseSets : Set (Set X)
  coarseSetsAreScales : coarseSets ⊆ G.scales
  coarseMeasure : (s : Set X) → ℝ≥0
  coarseSubadditivity : ∀ s t : Set X, s ∈ coarseSets → t ∈ coarseSets →
    coarseMeasure (s ∪ t) ≤ coarseMeasure s + coarseMeasure t

end GranularityCanonicalLaneLean
end HautevilleHouse