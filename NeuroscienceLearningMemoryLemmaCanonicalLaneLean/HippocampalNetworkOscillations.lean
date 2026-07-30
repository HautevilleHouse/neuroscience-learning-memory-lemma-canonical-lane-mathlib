import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceLearningMemoryLemmaCanonicalLaneLean

structure HippocampalOscillationsPackage where
  thetaRhythm : Prop
  gammaRhythm : Prop
  sharpWaveRipples : Prop
  placeCellSequence : Prop
  memoryReplay : Prop

structure HippocampalOscillationsEvidence (H : HippocampalOscillationsPackage) where
  thetaRhythmClosed : H.thetaRhythm
  gammaRhythmClosed : H.gammaRhythm
  sharpWaveRipplesClosed : H.sharpWaveRipples
  placeCellSequenceClosed : H.placeCellSequence
  memoryReplayClosed : H.memoryReplay

def HippocampalOscillationsClosed (H : HippocampalOscillationsPackage) : Prop :=
  H.thetaRhythm ∧ H.gammaRhythm ∧ H.sharpWaveRipples ∧ H.placeCellSequence ∧ H.memoryReplay

theorem hippocampal_oscillations_closed_from_evidence (H : HippocampalOscillationsPackage) (E : HippocampalOscillationsEvidence H) : HippocampalOscillationsClosed H := by
  exact And.intro E.thetaRhythmClosed
    (And.intro E.gammaRhythmClosed
      (And.intro E.sharpWaveRipplesClosed
        (And.intro E.placeCellSequenceClosed E.memoryReplayClosed)))

end NeuroscienceLearningMemoryLemmaCanonicalLaneLean
end HautevilleHouse