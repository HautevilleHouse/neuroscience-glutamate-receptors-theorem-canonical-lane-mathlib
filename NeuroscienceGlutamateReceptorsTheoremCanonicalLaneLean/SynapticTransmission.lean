import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure SynapticTransmissionPackage where
  presynapticTerminal : Type u
  synapticCleftWidth : ℝ
  neurotransmitterReleaseProbability : ℝ
  vesicleFusionRate : ℝ
  receptorDensity : ℝ
  postsynapticPotentialAmplitude : ℝ

structure SynapticTransmissionEvidence (S : SynapticTransmissionPackage) where
  synapticCleftWidthClosed : S.synapticCleftWidth > 0
  neurotransmitterReleaseProbabilityClosed : S.neurotransmitterReleaseProbability > 0 ∧ S.neurotransmitterReleaseProbability ≤ 1
  vesicleFusionRateClosed : S.vesicleFusionRate > 0
  receptorDensityClosed : S.receptorDensity > 0
  postsynapticPotentialAmplitudeClosed : S.postsynapticPotentialAmplitude ≠ 0

def SynapticTransmissionClosed (S : SynapticTransmissionPackage) : Prop :=
  S.synapticCleftWidth > 0 ∧
  (S.neurotransmitterReleaseProbability > 0 ∧ S.neurotransmitterReleaseProbability ≤ 1) ∧
  S.vesicleFusionRate > 0 ∧ S.receptorDensity > 0 ∧ S.postsynapticPotentialAmplitude ≠ 0

theorem synaptic_transmission_closed_from_evidence (S : SynapticTransmissionPackage) (E : SynapticTransmissionEvidence S) :
    SynapticTransmissionClosed S := by
  exact And.intro E.synapticCleftWidthClosed
    (And.intro E.neurotransmitterReleaseProbabilityClosed
      (And.intro E.vesicleFusionRateClosed
        (And.intro E.receptorDensityClosed E.postsynapticPotentialAmplitudeClosed)))

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse