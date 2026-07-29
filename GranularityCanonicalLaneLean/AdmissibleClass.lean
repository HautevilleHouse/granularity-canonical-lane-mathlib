import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure AdmissibleClass where
  object : GranularityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GranularityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GranularityCanonicalLaneLean
end HautevilleHouse