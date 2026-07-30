import AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryLemmaCanonicalLaneLean

structure MemoryConsolidationPackage where
  hippocampalReplay : Prop
  synapticTaggingCapture : Prop
  systemsConsolidation : Prop
  memoryEngramFormation : Prop

structure MemoryConsolidationEvidence (M : MemoryConsolidationPackage) where
  hippocampalReplayClosed : M.hippocampalReplay
  synapticTaggingCaptureClosed : M.synapticTaggingCapture
  systemsConsolidationClosed : M.systemsConsolidation
  memoryEngramFormationClosed : M.memoryEngramFormation

def MemoryConsolidationClosed (M : MemoryConsolidationPackage) : Prop :=
  M.hippocampalReplay ∧ M.synapticTaggingCapture ∧ M.systemsConsolidation ∧ M.memoryEngramFormation

theorem memory_consolidation_closed_from_evidence (M : MemoryConsolidationPackage) (E : MemoryConsolidationEvidence M) : MemoryConsolidationClosed M := by
  exact And.intro E.hippocampalReplayClosed (And.intro E.synapticTaggingCaptureClosed (And.intro E.systemsConsolidationClosed E.memoryEngramFormationClosed))

end NeuroscienceLearningMemoryLemmaCanonicalLaneLean
end HautevilleHouse
