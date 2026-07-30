import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryLemmaCanonicalLaneLean

structure HodgkinHuxleyDynamicsPackage where
  membranePotential : Type u
  sodiumChannel : Type v
  potassiumChannel : Type w
  leakChannel : Type x
  capacitance : Prop
  sodiumConductance : Prop
  potassiumConductance : Prop
  leakConductance : Prop
  nernstPotentials : Prop
  gatingVariables : Prop
  dynamicsEquation : Prop

structure HodgkinHuxleyDynamicsEvidence (H : HodgkinHuxleyDynamicsPackage) where
  capacitanceClosed : H.capacitance
  sodiumConductanceClosed : H.sodiumConductance
  potassiumConductanceClosed : H.potassiumConductance
  leakConductanceClosed : H.leakConductance
  nernstPotentialsClosed : H.nernstPotentials
  gatingVariablesClosed : H.gatingVariables
  dynamicsEquationClosed : H.dynamicsEquation

def HodgkinHuxleyDynamicsClosed (H : HodgkinHuxleyDynamicsPackage) : Prop :=
  H.capacitance ∧ H.sodiumConductance ∧ H.potassiumConductance ∧ H.leakConductance ∧
  H.nernstPotentials ∧ H.gatingVariables ∧ H.dynamicsEquation

theorem hodgkin_huxley_dynamics_closed_from_evidence (H : HodgkinHuxleyDynamicsPackage)
    (E : HodgkinHuxleyDynamicsEvidence H) : HodgkinHuxleyDynamicsClosed H := by
  exact And.intro E.capacitanceClosed
    (And.intro E.sodiumConductanceClosed
      (And.intro E.potassiumConductanceClosed
        (And.intro E.leakConductanceClosed
          (And.intro E.nernstPotentialsClosed
            (And.intro E.gatingVariablesClosed E.dynamicsEquationClosed)))))

end NeuroscienceLearningMemoryLemmaCanonicalLaneLean
end HautevilleHouse