import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GranularityCanonicalLaneLean.GranularityModel

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GranularityModelClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GranularityCanonicalLaneLean
end HautevilleHouse