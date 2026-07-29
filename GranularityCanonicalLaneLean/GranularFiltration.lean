import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GranularFiltrationPackage where
  filtrationIndex : Type u
  filtrationLevel : Type v
  inclusionMaps : Prop
  limitPreservation : Prop
  colimitPreservation : Prop
  inclusionMapsTerm : inclusionMaps
  limitPreservationTerm : limitPreservation
  colimitPreservationTerm : colimitPreservation

def GranularFiltrationClosed (F : GranularFiltrationPackage) : Prop :=
  F.inclusionMaps ∧ F.limitPreservation ∧ F.colimitPreservation

structure GranularFiltrationEvidence (F : GranularFiltrationPackage) where
  inclusionMapsClosed : F.inclusionMaps
  limitPreservationClosed : F.limitPreservation
  colimitPreservationClosed : F.colimitPreservation

theorem granular_filtration_closed_from_evidence
    (F : GranularFiltrationPackage) (E : GranularFiltrationEvidence F) :
    GranularFiltrationClosed F := by
  exact And.intro E.inclusionMapsClosed
    (And.intro E.limitPreservationClosed E.colimitPreservationClosed)

end GranularityCanonicalLaneLean
end HautevilleHouse