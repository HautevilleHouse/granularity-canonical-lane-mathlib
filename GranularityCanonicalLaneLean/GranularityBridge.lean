import HautevilleHouse.GranularityCanonicalLaneLean.MultiscaleDecomposition

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

def bridgeClosed {X : Type u} [TopologicalSpace X]
    (G : GranularityStructure X) (S : ScaleSeparation G)
    (M : MultiscaleDecomposition G S) : Prop :=
  ∀ n : ℕ, (M.coarseGrainings n).coarseSubadditivity

theorem bridge_from_admissible_class {X : Type u} [TopologicalSpace X]
    (G : GranularityStructure X) (S : ScaleSeparation G)
    (M : MultiscaleDecomposition G S) : bridgeClosed G S M := by
  intro n; exact (M.coarseGrainings n).coarseSubadditivity

def gateClosed {X : Type u} [TopologicalSpace X]
    (G : GranularityStructure X) (S : ScaleSeparation G)
    (M : MultiscaleDecomposition G S) : Prop :=
  ∀ n : ℕ, ∀ s : Set X, s ∈ (M.coarseGrainings n).coarseSets →
    (M.coarseGrainings (n+1)).coarseMeasure s ≤ (M.coarseGrainings n).coarseMeasure s

theorem gate_from_admissible_class {X : Type u} [TopologicalSpace X]
    (G : GranularityStructure X) (S : ScaleSeparation G)
    (M : MultiscaleDecomposition G S) : gateClosed G S M := by
  intro n s hs; exact M.measureDecreasing n s hs

end GranularityCanonicalLaneLean
end HautevilleHouse