import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : ℝ → ℝ
  gatingVariables : ℝ → ℝ × ℝ × ℝ
  conductanceModel : Prop
  spikeGenerationMechanism : Prop
  actionPotentialPropagation : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  conductanceModelClosed : H.conductanceModel
  spikeGenerationMechanismClosed : H.spikeGenerationMechanism
  actionPotentialPropagationClosed : H.actionPotentialPropagation

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.conductanceModel ∧ H.spikeGenerationMechanism ∧ H.actionPotentialPropagation

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.conductanceModelClosed (And.intro E.spikeGenerationMechanismClosed E.actionPotentialPropagationClosed)

end NeuroscienceLearningMemoryLemmaCanonicalLaneLean
end HautevilleHouse