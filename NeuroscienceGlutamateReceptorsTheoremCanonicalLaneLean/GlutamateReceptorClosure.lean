import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean.GlutamateReceptorTypes
import HautevilleHouse.NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean.HodgkinHuxleyModel
import HautevilleHouse.NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean.HebbianPlasticity
import HautevilleHouse.NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean.NeuralFieldEquations
import HautevilleHouse.NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean.ConnectomicsGraph

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedGlutamateReceptorClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_glutamate_receptor_endgame (A : AdmissibleClass) : ConstrainedGlutamateReceptorClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse