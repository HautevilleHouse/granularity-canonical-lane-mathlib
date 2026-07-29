import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GranularityModel where
  baseSet : Type u
  relation : baseSet → baseSet → Prop
  transitivity : Prop
  reflexivity : Prop
  antisymmetry : Prop
  transitivityTerm : transitivity
  reflexivityTerm : reflexivity
  antisymmetryTerm : antisymmetry

def GranularityModelClosed (M : GranularityModel) : Prop :=
  M.transitivity ∧ M.reflexivity ∧ M.antisymmetry

theorem granularity_model_closed_from_evidence (M : GranularityModel)
    (ht : M.transitivity) (hr : M.reflexivity) (ha : M.antisymmetry) : GranularityModelClosed M := by
  exact And.intro ht (And.intro hr ha)

end GranularityCanonicalLaneLean
end HautevilleHouse