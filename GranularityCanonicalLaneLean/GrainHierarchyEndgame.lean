import GranularityCanonicalLaneLean.GrainResolutionAlgorithm

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GrainHierarchyEndgamePackage {A : AdmissibleClass} {G : GrainPartitionPackage A} {B : GrainBoundaryOperatorPackage G} (R : GrainResolutionAlgorithmPackage B) where
  hierarchyConverges : Prop
  finalGrainPartition : Prop
  boundaryRecorded : Prop
  hierarchyConvergesClosed : hierarchyConverges
  finalGrainPartitionClosed : finalGrainPartition
  boundaryRecordedClosed : boundaryRecorded

structure GrainHierarchyEndgameEvidence {A : AdmissibleClass} {G : GrainPartitionPackage A} {B : GrainBoundaryOperatorPackage G} {R : GrainResolutionAlgorithmPackage B} (E : GrainHierarchyEndgamePackage R) where
  hierarchyConvergesClosed : E.hierarchyConverges
  finalGrainPartitionClosed : E.finalGrainPartition
  boundaryRecordedClosed : E.boundaryRecorded

def GrainHierarchyEndgameClosed {A : AdmissibleClass} {G : GrainPartitionPackage A} {B : GrainBoundaryOperatorPackage G} {R : GrainResolutionAlgorithmPackage B} (E : GrainHierarchyEndgamePackage R) : Prop :=
  E.hierarchyConverges ∧ E.finalGrainPartition ∧ E.boundaryRecorded

theorem grain_hierarchy_endgame_closed_from_evidence {A : AdmissibleClass} {G : GrainPartitionPackage A} {B : GrainBoundaryOperatorPackage G} {R : GrainResolutionAlgorithmPackage B} (E : GrainHierarchyEndgamePackage R) (Ev : GrainHierarchyEndgameEvidence E) : GrainHierarchyEndgameClosed E := by
  exact And.intro Ev.hierarchyConvergesClosed (And.intro Ev.finalGrainPartitionClosed Ev.boundaryRecordedClosed)

end GranularityCanonicalLaneLean
end HautevilleHouse