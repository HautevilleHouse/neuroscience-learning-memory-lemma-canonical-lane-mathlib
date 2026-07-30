import AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NeuroscienceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceLearningMemoryLemmaCanonicalLaneLean
end HautevilleHouse
