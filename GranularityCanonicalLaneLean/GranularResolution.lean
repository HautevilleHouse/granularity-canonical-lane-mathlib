import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GranularResolutionPackage where
  resolutionTarget : Type u
  resolutionMap : Type v
  fiberStructure : Prop
  resolutionProperty : Prop
  functoriality : Prop
  fiberStructureTerm : fiberStructure
  resolutionPropertyTerm : resolutionProperty
  functorialityTerm : functoriality

def GranularResolutionClosed (R : GranularResolutionPackage) : Prop :=
  R.fiberStructure ∧ R.resolutionProperty ∧ R.functoriality

structure GranularResolutionEvidence (R : GranularResolutionPackage) where
  fiberStructureClosed : R.fiberStructure
  resolutionPropertyClosed : R.resolutionProperty
  functorialityClosed : R.functoriality

theorem granular_resolution_closed_from_evidence
    (R : GranularResolutionPackage) (E : GranularResolutionEvidence R) :
    GranularResolutionClosed R := by
  exact And.intro E.fiberStructureClosed
    (And.intro E.resolutionPropertyClosed E.functorialityClosed)

end GranularityCanonicalLaneLean
end HautevilleHouse