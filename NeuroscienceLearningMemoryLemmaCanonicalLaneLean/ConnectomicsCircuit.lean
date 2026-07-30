import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryLemmaCanonicalLaneLean

structure ConnectomicsCircuitModel where
  neuronGraph : Type u
  synapseTypes : Type v
  circuitMotifs : Type w
  graphConnectivity : Prop
  synapticWeightMatrix : Prop
  motifDistribution : Prop
  graphConnectivityTerm : graphConnectivity
  synapticWeightMatrixTerm : synapticWeightMatrix
  motifDistributionTerm : motifDistribution

structure ConnectomicsCircuitEvidence (C : ConnectomicsCircuitModel) where
  graphConnectivityClosed : C.graphConnectivity
  synapticWeightMatrixClosed : C.synapticWeightMatrix
  motifDistributionClosed : C.motifDistribution

def ConnectomicsCircuitClosed (C : ConnectomicsCircuitModel) : Prop :=
  C.graphConnectivity ∧ C.synapticWeightMatrix ∧ C.motifDistribution

theorem connectomics_circuit_closed_from_evidence (C : ConnectomicsCircuitModel)
    (E : ConnectomicsCircuitEvidence C) : ConnectomicsCircuitClosed C := by
  exact And.intro E.graphConnectivityClosed
    (And.intro E.synapticWeightMatrixClosed E.motifDistributionClosed)

end HautevilleHouse.NeuroscienceLearningMemoryLemmaCanonicalLaneLean
end HautevilleHouse