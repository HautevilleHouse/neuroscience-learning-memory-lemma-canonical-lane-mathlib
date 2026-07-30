import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryLemmaCanonicalLaneLean

structure NeuralFieldModel where
  fieldDynamics : Type u
  connectivityKernel : Type v
  recurrentInput : Type w
  stationarySolution : Prop
  stabilityCondition : Prop
  patternFormation : Prop
  stationarySolutionTerm : stationarySolution
  stabilityConditionTerm : stabilityCondition
  patternFormationTerm : patternFormation

structure NeuralFieldEvidence (N : NeuralFieldModel) where
  stationarySolutionClosed : N.stationarySolution
  stabilityConditionClosed : N.stabilityCondition
  patternFormationClosed : N.patternFormation

def NeuralFieldClosed (N : NeuralFieldModel) : Prop :=
  N.stationarySolution ∧ N.stabilityCondition ∧ N.patternFormation

theorem neural_field_closed_from_evidence (N : NeuralFieldModel)
    (E : NeuralFieldEvidence N) : NeuralFieldClosed N := by
  exact And.intro E.stationarySolutionClosed
    (And.intro E.stabilityConditionClosed E.patternFormationClosed)

end HautevilleHouse.NeuroscienceLearningMemoryLemmaCanonicalLaneLean
end HautevilleHouse