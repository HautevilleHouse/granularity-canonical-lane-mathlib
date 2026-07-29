import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GranularityCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.GranularityCanonicalLaneLean.GranularityGates

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

def ConstrainedGranularityClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_granularity_endgame (A : AdmissibleClass) :
    ConstrainedGranularityClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GranularityCanonicalLaneLean
end HautevilleHouse