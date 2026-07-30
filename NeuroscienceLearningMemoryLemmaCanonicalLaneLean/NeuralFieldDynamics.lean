import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryLemmaCanonicalLaneLean

structure NeuralFieldPackage where
  membranePotential : Type u
  firingRate : Type v
  synapticCoupling : Type w
  inputCurrent : Type x
  activationFunction : Prop
  populationDynamics : Prop

structure NeuralFieldEvidence (N : NeuralFieldPackage) where
  activationFunctionClosed : N.activationFunction
  populationDynamicsClosed : N.populationDynamics

def NeuralFieldClosed (N : NeuralFieldPackage) : Prop :=
  N.activationFunction ∧ N.populationDynamics

theorem neural_field_closed_from_evidence (N : NeuralFieldPackage) (E : NeuralFieldEvidence N) : NeuralFieldClosed N := by
  exact And.intro E.activationFunctionClosed E.populationDynamicsClosed

end NeuroscienceLearningMemoryLemmaCanonicalLaneLean
end HautevilleHouse