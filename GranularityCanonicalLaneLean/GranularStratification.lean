import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GranularStratificationPackage where
  stratumFamily : Type u
  stratumOrder : Type v
  incidenceProperties : Prop
  adjacencyStructure : Prop
  stratifyingMaps : Prop
  incidencePropertiesTerm : incidenceProperties
  adjacencyStructureTerm : adjacencyStructure
  stratifyingMapsTerm : stratifyingMaps

def GranularStratificationClosed (S : GranularStratificationPackage) : Prop :=
  S.incidenceProperties ∧ S.adjacencyStructure ∧ S.stratifyingMaps

structure GranularStratificationEvidence (S : GranularStratificationPackage) where
  incidencePropertiesClosed : S.incidenceProperties
  adjacencyStructureClosed : S.adjacencyStructure
  stratifyingMapsClosed : S.stratifyingMaps

theorem granular_stratification_closed_from_evidence
    (S : GranularStratificationPackage) (E : GranularStratificationEvidence S) :
    GranularStratificationClosed S := by
  exact And.intro E.incidencePropertiesClosed
    (And.intro E.adjacencyStructureClosed E.stratifyingMapsClosed)

end GranularityCanonicalLaneLean
end HautevilleHouse