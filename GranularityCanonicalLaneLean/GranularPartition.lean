import HautevilleHouse.GranularityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GranularPartitionPackage where
  indexedFamily : Type u → Type v
  coveringProperty : Prop
  disjointRefinement : Prop
  measureCompatibility : Prop

structure GranularPartitionEvidence (P : GranularPartitionPackage) where
  indexedFamilyClosed : Prop
  coveringPropertyClosed : P.coveringProperty
  disjointRefinementClosed : P.disjointRefinement
  measureCompatibilityClosed : P.measureCompatibility

def GranularPartitionClosed (P : GranularPartitionPackage) : Prop :=
  P.coveringProperty ∧ P.disjointRefinement ∧ P.measureCompatibility

theorem granular_partition_closed_from_evidence (P : GranularPartitionPackage)
    (E : GranularPartitionEvidence P) : GranularPartitionClosed P := by
  exact And.intro E.coveringPropertyClosed
    (And.intro E.disjointRefinementClosed E.measureCompatibilityClosed)

end GranularityCanonicalLaneLean
end HautevilleHouse