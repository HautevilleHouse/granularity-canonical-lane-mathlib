import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GranularAdmissibleObject where
  carrier : Type u
  granularStructure : Set (carrier → carrier)
  fixedPoints : Set carrier
  closureUnderRefinement : ∀ f ∈ granularStructure, ∀ x ∈ fixedPoints, f x ∈ fixedPoints

structure GranularAdmissibleClass where
  object : GranularAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedGranularClosure (A : GranularAdmissibleClass) : Prop :=
  A.object.closureUnderRefinement ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GranularityCanonicalLaneLean
end HautevilleHouse