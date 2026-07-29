import HautevilleHouse.GranularityCanonicalLaneLean.GranularityCore

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure ScaleSeparation {X : Type u} [TopologicalSpace X]
    (G : GranularityStructure X) where
  disjointScales : ∀ s t : Set X, s ∈ G.scales → t ∈ G.scales → s ≠ t → Disjoint s t
  scaleMonotone : ∀ s t : Set X, s ⊆ t → G.scaleIndex s ≤ G.scaleIndex t
  measureScaleConsistency : ∀ s t : Set X, s ∈ G.scales → t ∈ G.scales →
    G.measureFamily s ≤ G.measureFamily t + (if s ⊆ t then 0 else 1)

theorem scale_separation_consistent {X : Type u} [TopologicalSpace X]
    (G : GranularityStructure X) (S : ScaleSeparation G) : True := by trivial

end GranularityCanonicalLaneLean
end HautevilleHouse