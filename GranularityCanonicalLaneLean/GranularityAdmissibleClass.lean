import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GranularityAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  partitionedIntoGrains : Prop
  grainBoundaryRecorded : Prop
  conclusion : grainBoundaryRecorded

structure AdmissibleClass where
  object : GranularityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GranularityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def GranularityWitnessClosed (O : GranularityAdmittedObject) : Prop :=
  O.grainBoundaryRecorded

end GranularityCanonicalLaneLean
end HautevilleHouse