import HautevilleHouse.GranularityCanonicalLaneLean.ScaleSeparation
import HautevilleHouse.GranularityCanonicalLaneLean.CoarseGraining

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure MultiscaleDecomposition {X : Type u} [TopologicalSpace X]
    (G : GranularityStructure X) (S : ScaleSeparation G) where
  coarseGrainings : ℕ → CoarseGraining G
  nestedInScale : ∀ n : ℕ, (coarseGrainings n).coarseSets ⊆ (coarseGrainings (n+1)).coarseSets
  measureDecreasing : ∀ n : ℕ, ∀ s : Set X, s ∈ (coarseGrainings n).coarseSets →
    (coarseGrainings (n+1)).coarseMeasure s ≤ (coarseGrainings n).coarseMeasure s

end GranularityCanonicalLaneLean
end HautevilleHouse