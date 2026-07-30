import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryLemmaCanonicalLaneLean

structure NeurotransmitterDynamicsPackage where
  vesicleRelease : Type u
  receptorBinding : Type v
  reuptakeMechanism : Type w
  diffusionDynamics : Prop
  quantalRelease : Prop

structure NeurotransmitterDynamicsEvidence (N : NeurotransmitterDynamicsPackage) where
  diffusionDynamicsClosed : N.diffusionDynamics
  quantalReleaseClosed : N.quantalRelease

def NeurotransmitterDynamicsClosed (N : NeurotransmitterDynamicsPackage) : Prop :=
  N.diffusionDynamics ∧ N.quantalRelease

theorem neurotransmitter_dynamics_closed_from_evidence (N : NeurotransmitterDynamicsPackage) (E : NeurotransmitterDynamicsEvidence N) : NeurotransmitterDynamicsClosed N := by
  exact And.intro E.diffusionDynamicsClosed E.quantalReleaseClosed

end NeuroscienceLearningMemoryLemmaCanonicalLaneLean
end HautevilleHouse