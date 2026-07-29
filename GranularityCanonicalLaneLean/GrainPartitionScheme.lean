import GranularityCanonicalLaneLean.GranularityAdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GrainPartitionPackage (A : AdmissibleClass) where
  grainDecomposition : A.object.space → Set (Set (A.object.space))
  partitionProperties : Prop
  grainBoundarySeparation : Prop
  refinedPartitionExists : Prop
  partitionPropertiesClosed : partitionProperties
  grainBoundarySeparationClosed : grainBoundarySeparation
  refinedPartitionExistsClosed : refinedPartitionExists

structure GrainPartitionEvidence {A : AdmissibleClass} (G : GrainPartitionPackage A) where
  partitionPropertiesClosed : G.partitionProperties
  grainBoundarySeparationClosed : G.grainBoundarySeparation
  refinedPartitionExistsClosed : G.refinedPartitionExists

def GrainPartitionClosed {A : AdmissibleClass} (G : GrainPartitionPackage A) : Prop :=
  G.partitionProperties ∧ G.grainBoundarySeparation ∧ G.refinedPartitionExists

theorem grain_partition_closed_from_evidence {A : AdmissibleClass} (G : GrainPartitionPackage A) (E : GrainPartitionEvidence G) : GrainPartitionClosed G := by
  exact And.intro E.partitionPropertiesClosed (And.intro E.grainBoundarySeparationClosed E.refinedPartitionExistsClosed)

end GranularityCanonicalLaneLean
end HautevilleHouse