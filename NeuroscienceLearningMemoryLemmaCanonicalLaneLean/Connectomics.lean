import AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryLemmaCanonicalLaneLean

structure ConnectomicsPackage where
  synapticConnectivityMatrix : Prop
  networkMotifAnalysis : Prop
  smallWorldTopology : Prop
  modularStructure : Prop

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  synapticConnectivityMatrixClosed : C.synapticConnectivityMatrix
  networkMotifAnalysisClosed : C.networkMotifAnalysis
  smallWorldTopologyClosed : C.smallWorldTopology
  modularStructureClosed : C.modularStructure

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.synapticConnectivityMatrix ∧ C.networkMotifAnalysis ∧ C.smallWorldTopology ∧ C.modularStructure

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage) (E : ConnectomicsEvidence C) : ConnectomicsClosed C := by
  exact And.intro E.synapticConnectivityMatrixClosed (And.intro E.networkMotifAnalysisClosed (And.intro E.smallWorldTopologyClosed E.modularStructureClosed))

end NeuroscienceLearningMemoryLemmaCanonicalLaneLean
end HautevilleHouse
