import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryLemmaCanonicalLaneLean

structure NeuralFieldPackage where
  spatialDomain : Type u
  timeDomain : Type v
  neuralField : Type w
  firingRateFunction : Type x
  connectivityKernel : Type y
  fieldEquation : Prop
  wellPosedness : Prop
  stationarySolution : Prop

structure NeuralFieldEvidence (N : NeuralFieldPackage) where
  fieldEquationClosed : N.fieldEquation
  wellPosednessClosed : N.wellPosedness
  stationarySolutionClosed : N.stationarySolution

def NeuralFieldClosed (N : NeuralFieldPackage) : Prop :=
  N.fieldEquation ∧ N.wellPosedness ∧ N.stationarySolution

theorem neural_field_closed_from_evidence (N : NeuralFieldPackage) (E : NeuralFieldEvidence N) :
    NeuralFieldClosed N := by
  exact And.intro E.fieldEquationClosed (And.intro E.wellPosednessClosed E.stationarySolutionClosed)

end NeuroscienceLearningMemoryLemmaCanonicalLaneLean
end HautevilleHouse