import GranularityCanonicalLaneLean.GrainPartitionScheme

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GrainBoundaryOperatorPackage {A : AdmissibleClass} (G : GrainPartitionPackage A) where
  boundaryMap : A.object.space → A.object.space
  boundaryMapProperties : Prop
  imageOfGrain : Prop
  operatorCompatibility : Prop
  boundaryMapPropertiesClosed : boundaryMapProperties
  imageOfGrainClosed : imageOfGrain
  operatorCompatibilityClosed : operatorCompatibility

structure GrainBoundaryOperatorEvidence {A : AdmissibleClass} {G : GrainPartitionPackage A} (B : GrainBoundaryOperatorPackage G) where
  boundaryMapPropertiesClosed : B.boundaryMapProperties
  imageOfGrainClosed : B.imageOfGrain
  operatorCompatibilityClosed : B.operatorCompatibility

def GrainBoundaryOperatorClosed {A : AdmissibleClass} {G : GrainPartitionPackage A} (B : GrainBoundaryOperatorPackage G) : Prop :=
  B.boundaryMapProperties ∧ B.imageOfGrain ∧ B.operatorCompatibility

theorem grain_boundary_operator_closed_from_evidence {A : AdmissibleClass} {G : GrainPartitionPackage A} (B : GrainBoundaryOperatorPackage G) (E : GrainBoundaryOperatorEvidence B) : GrainBoundaryOperatorClosed B := by
  exact And.intro E.boundaryMapPropertiesClosed (And.intro E.imageOfGrainClosed E.operatorCompatibilityClosed)

end GranularityCanonicalLaneLean
end HautevilleHouse