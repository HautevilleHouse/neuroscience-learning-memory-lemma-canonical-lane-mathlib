import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryLemmaCanonicalLaneLean

structure SynapticConsolidationPackage where
  shortTermPotentiation : Prop
  longTermPotentiation : Prop
  proteinSynthesis : Prop
  structuralChange : Prop
  consolidationTimeConstant : Prop

structure SynapticConsolidationEvidence (S : SynapticConsolidationPackage) where
  shortTermPotentiationClosed : S.shortTermPotentiation
  longTermPotentiationClosed : S.longTermPotentiation
  proteinSynthesisClosed : S.proteinSynthesis
  structuralChangeClosed : S.structuralChange
  consolidationTimeConstantClosed : S.consolidationTimeConstant

def SynapticConsolidationClosed (S : SynapticConsolidationPackage) : Prop :=
  S.shortTermPotentiation ∧ S.longTermPotentiation ∧ S.proteinSynthesis ∧ S.structuralChange ∧ S.consolidationTimeConstant

theorem synaptic_consolidation_closed_from_evidence (S : SynapticConsolidationPackage) (E : SynapticConsolidationEvidence S) : SynapticConsolidationClosed S := by
  exact And.intro E.shortTermPotentiationClosed
    (And.intro E.longTermPotentiationClosed
      (And.intro E.proteinSynthesisClosed
        (And.intro E.structuralChangeClosed E.consolidationTimeConstantClosed)))

end NeuroscienceLearningMemoryLemmaCanonicalLaneLean
end HautevilleHouse