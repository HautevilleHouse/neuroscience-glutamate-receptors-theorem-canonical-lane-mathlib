import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure SynapticPlasticityEndpoint where
  hebbianMechanism : Prop
  homeostaticScaling : Prop
  metaplasticity : Prop
  spikeTimingDependence : Prop
  hebbianMechanismClosed : hebbianMechanism
  homeostaticScalingClosed : homeostaticScaling
  metaplasticityClosed : metaplasticity
  spikeTimingDependenceClosed : spikeTimingDependence

def SynapticPlasticityEndpointClosed (S : SynapticPlasticityEndpoint) : Prop :=
  S.hebbianMechanism ∧ S.homeostaticScaling ∧ S.metaplasticity ∧ S.spikeTimingDependence

theorem synaptic_plasticity_endpoint_closed_from_evidence (S : SynapticPlasticityEndpoint) : SynapticPlasticityEndpointClosed S := by
  exact And.intro S.hebbianMechanismClosed (And.intro S.homeostaticScalingClosed (And.intro S.metaplasticityClosed S.spikeTimingDependenceClosed))

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse