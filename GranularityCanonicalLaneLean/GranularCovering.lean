import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GranularCoveringPackage where
  coverFamily : Type u
  overlapControl : Prop
  refinementIndex : Prop
  coveringNerve : Prop
  overlapControlTerm : overlapControl
  refinementIndexTerm : refinementIndex
  coveringNerveTerm : coveringNerve

def GranularCoveringClosed (C : GranularCoveringPackage) : Prop :=
  C.overlapControl ∧ C.refinementIndex ∧ C.coveringNerve

structure GranularCoveringEvidence (C : GranularCoveringPackage) where
  overlapControlClosed : C.overlapControl
  refinementIndexClosed : C.refinementIndex
  coveringNerveClosed : C.coveringNerve

theorem granular_covering_closed_from_evidence
    (C : GranularCoveringPackage) (E : GranularCoveringEvidence C) :
    GranularCoveringClosed C := by
  exact And.intro E.overlapControlClosed
    (And.intro E.refinementIndexClosed E.coveringNerveClosed)

end GranularityCanonicalLaneLean
end HautevilleHouse