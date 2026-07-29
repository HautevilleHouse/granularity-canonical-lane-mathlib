import GranularityCanonicalLaneLean.GrainBoundaryOperator

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GrainResolutionAlgorithmPackage {A : AdmissibleClass} {G : GrainPartitionPackage A} (B : GrainBoundaryOperatorPackage G) where
  resolutionSteps : Nat
  terminationCondition : Prop
  correctnessCondition : Prop
  resolutionStepsClosed : resolutionSteps = resolutionSteps
  terminationConditionClosed : terminationCondition
  correctnessConditionClosed : correctnessCondition

structure GrainResolutionAlgorithmEvidence {A : AdmissibleClass} {G : GrainPartitionPackage A} {B : GrainBoundaryOperatorPackage G} (R : GrainResolutionAlgorithmPackage B) where
  terminationConditionClosed : R.terminationCondition
  correctnessConditionClosed : R.correctnessCondition

def GrainResolutionAlgorithmClosed {A : AdmissibleClass} {G : GrainPartitionPackage A} {B : GrainBoundaryOperatorPackage G} (R : GrainResolutionAlgorithmPackage B) : Prop :=
  R.terminationCondition ∧ R.correctnessCondition

theorem grain_resolution_algorithm_closed_from_evidence {A : AdmissibleClass} {G : GrainPartitionPackage A} {B : GrainBoundaryOperatorPackage G} (R : GrainResolutionAlgorithmPackage B) (E : GrainResolutionAlgorithmEvidence R) : GrainResolutionAlgorithmClosed R := by
  exact And.intro E.terminationConditionClosed E.correctnessConditionClosed

end GranularityCanonicalLaneLean
end HautevilleHouse