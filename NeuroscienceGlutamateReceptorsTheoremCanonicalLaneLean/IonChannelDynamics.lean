import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure IonChannelDynamics where
  channelType : Type
  gatingVariable : Type
  activationCurve : Prop
  inactivationCurve : Prop
  conductance : Prop
  activationCurveClosed : activationCurve
  inactivationCurveClosed : inactivationCurve
  conductanceClosed : conductance

def IonChannelDynamicsClosed (I : IonChannelDynamics) : Prop :=
  I.activationCurve ∧ I.inactivationCurve ∧ I.conductance

theorem ion_channel_dynamics_closed_from_evidence (I : IonChannelDynamics) : IonChannelDynamicsClosed I := by
  exact And.intro I.activationCurveClosed (And.intro I.inactivationCurveClosed I.conductanceClosed)

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse