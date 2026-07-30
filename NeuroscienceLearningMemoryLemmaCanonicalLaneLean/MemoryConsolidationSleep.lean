import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryLemmaCanonicalLaneLean

structure SleepMemoryConsolidationPackage where
  sleepStageCycles : Prop
  synapticScaling : Prop
  systemsConsolidation : Prop
  memoryReactivation : Prop

structure SleepMemoryConsolidationEvidence (S : SleepMemoryConsolidationPackage) where
  sleepStageCyclesClosed : S.sleepStageCycles
  synapticScalingClosed : S.synapticScaling
  systemsConsolidationClosed : S.systemsConsolidation
  memoryReactivationClosed : S.memoryReactivation

def SleepMemoryConsolidationClosed (S : SleepMemoryConsolidationPackage) : Prop :=
  S.sleepStageCycles ∧ S.synapticScaling ∧ S.systemsConsolidation ∧ S.memoryReactivation

theorem sleep_memory_consolidation_closed_from_evidence (S : SleepMemoryConsolidationPackage) (E : SleepMemoryConsolidationEvidence S) : SleepMemoryConsolidationClosed S := by
  exact And.intro E.sleepStageCyclesClosed
    (And.intro E.synapticScalingClosed
      (And.intro E.systemsConsolidationClosed E.memoryReactivationClosed))

end NeuroscienceLearningMemoryLemmaCanonicalLaneLean
end HautevilleHouse