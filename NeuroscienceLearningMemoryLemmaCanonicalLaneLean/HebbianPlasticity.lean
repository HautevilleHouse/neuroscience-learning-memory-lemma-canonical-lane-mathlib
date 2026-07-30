import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryLemmaCanonicalLaneLean

structure HebbianPlasticityPackage where
  presynapticActivity : Type u
  postsynapticActivity : Type v
  synapticWeight : Type w
  learningRate : Prop
  correlationRule : Prop
  weightUpdateEquation : Prop

structure HebbianPlasticityEvidence (H : HebbianPlasticityPackage) where
  learningRateClosed : H.learningRate
  correlationRuleClosed : H.correlationRule
  weightUpdateEquationClosed : H.weightUpdateEquation

def HebbianPlasticityClosed (H : HebbianPlasticityPackage) : Prop :=
  H.learningRate ∧ H.correlationRule ∧ H.weightUpdateEquation

theorem hebbian_plasticity_closed_from_evidence (H : HebbianPlasticityPackage)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.learningRateClosed
    (And.intro E.correlationRuleClosed E.weightUpdateEquationClosed)

end NeuroscienceLearningMemoryLemmaCanonicalLaneLean
end HautevilleHouse