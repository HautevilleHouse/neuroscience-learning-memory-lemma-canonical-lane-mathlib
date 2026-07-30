import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryLemmaCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membranePotential : Type u
  gatingVariables : Type v
  ionChannelConductances : Type w
  capacitance : Type x
  sodiumCurrent : Prop
  potassiumCurrent : Prop
  leakageCurrent : Prop
  actionPotentialGeneration : Prop
  refractoryPeriod : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  sodiumCurrentClosed : H.sodiumCurrent
  potassiumCurrentClosed : H.potassiumCurrent
  leakageCurrentClosed : H.leakageCurrent
  actionPotentialGenerationClosed : H.actionPotentialGeneration
  refractoryPeriodClosed : H.refractoryPeriod

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.sodiumCurrent ∧ H.potassiumCurrent ∧ H.leakageCurrent ∧ H.actionPotentialGeneration ∧ H.refractoryPeriod

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage) (E : HodgkinHuxleyEvidence H) :
    HodgkinHuxleyClosed H := by
  exact And.intro E.sodiumCurrentClosed (And.intro E.potassiumCurrentClosed (And.intro E.leakageCurrentClosed (And.intro E.actionPotentialGenerationClosed E.refractoryPeriodClosed)))

end NeuroscienceLearningMemoryLemmaCanonicalLaneLean
end HautevilleHouse