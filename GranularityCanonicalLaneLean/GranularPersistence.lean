import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GranularityCanonicalLaneLean

structure GranularPersistencePackage where
  persistenceParameter : Type u
  birthTime : Prop
  deathTime : Prop
  persistenceModule : Prop
  barcodeStructure : Prop
  birthTimeTerm : birthTime
  deathTimeTerm : deathTime
  persistenceModuleTerm : persistenceModule
  barcodeStructureTerm : barcodeStructure

def GranularPersistenceClosed (P : GranularPersistencePackage) : Prop :=
  P.birthTime ∧ P.deathTime ∧ P.persistenceModule ∧ P.barcodeStructure

structure GranularPersistenceEvidence (P : GranularPersistencePackage) where
  birthTimeClosed : P.birthTime
  deathTimeClosed : P.deathTime
  persistenceModuleClosed : P.persistenceModule
  barcodeStructureClosed : P.barcodeStructure

theorem granular_persistence_closed_from_evidence
    (P : GranularPersistencePackage) (E : GranularPersistenceEvidence P) :
    GranularPersistenceClosed P := by
  exact And.intro E.birthTimeClosed
    (And.intro E.deathTimeClosed
      (And.intro E.persistenceModuleClosed E.barcodeStructureClosed))

end GranularityCanonicalLaneLean
end HautevilleHouse