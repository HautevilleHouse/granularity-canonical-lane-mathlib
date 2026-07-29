import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GranularityAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  granularStructure : Prop
  conclusion : granularStructure

def GranularityWitnessClosed (O : GranularityAdmittedObject) : Prop :=
  O.granularStructure

end GranularityCanonicalLaneLean
end HautevilleHouse