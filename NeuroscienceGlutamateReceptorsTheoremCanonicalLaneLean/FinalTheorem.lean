import canonicalLaneMathlib.AdmissibleClass
import GlutamateReceptorKinetics
import HebbianPlasticityBridge

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GlutamateReceptorKineticsClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedNeuroscienceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_neuroscience_endgame (A : AdmissibleClass) :
    ConstrainedNeuroscienceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse
