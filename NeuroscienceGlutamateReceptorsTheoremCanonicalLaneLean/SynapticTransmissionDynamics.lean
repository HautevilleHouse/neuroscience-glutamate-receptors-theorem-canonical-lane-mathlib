import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure SynapticTransmissionDynamics where
  presynapticRelease : Prop
  glutamateDiffusion : Prop
  postsynapticResponse : Prop
  signalTermination : Prop

structure SynapticTransmissionDynamicsEvidence (S : SynapticTransmissionDynamics) where
  presynapticReleaseClosed : S.presynapticRelease
  glutamateDiffusionClosed : S.glutamateDiffusion
  postsynapticResponseClosed : S.postsynapticResponse
  signalTerminationClosed : S.signalTermination

def SynapticTransmissionDynamicsClosed (S : SynapticTransmissionDynamics) : Prop :=
  S.presynapticRelease ∧ S.glutamateDiffusion ∧ S.postsynapticResponse ∧ S.signalTermination

theorem synaptic_transmission_dynamics_closed_from_evidence
    (S : SynapticTransmissionDynamics) (E : SynapticTransmissionDynamicsEvidence S) :
    SynapticTransmissionDynamicsClosed S := by
  exact And.intro E.presynapticReleaseClosed
    (And.intro E.glutamateDiffusionClosed
      (And.intro E.postsynapticResponseClosed E.signalTerminationClosed))

end HautevilleHouse
end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean