import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure SynapticPlasticityMechanisms where
  longTermPotentiation : Prop
  longTermDepression : Prop
  calciumSignalingDependence : Prop
  glutamateReceptorTrafficking : Prop
  spineMorphologyChanges : Prop
  longTermPotentiationClosed : longTermPotentiation
  longTermDepressionClosed : longTermDepression
  calciumSignalingDependenceClosed : calciumSignalingDependence
  glutamateReceptorTraffickingClosed : glutamateReceptorTrafficking
  spineMorphologyChangesClosed : spineMorphologyChanges

structure SynapticPlasticityEvidence (P : SynapticPlasticityMechanisms) where
  longTermPotentiationClosed : P.longTermPotentiation
  longTermDepressionClosed : P.longTermDepression
  calciumSignalingDependenceClosed : P.calciumSignalingDependence
  glutamateReceptorTraffickingClosed : P.glutamateReceptorTrafficking
  spineMorphologyChangesClosed : P.spineMorphologyChanges

def SynapticPlasticityClosed (P : SynapticPlasticityMechanisms) : Prop :=
  P.longTermPotentiation ∧ P.longTermDepression ∧
  P.calciumSignalingDependence ∧ P.glutamateReceptorTrafficking ∧
  P.spineMorphologyChanges

theorem synaptic_plasticity_closed_from_evidence (P : SynapticPlasticityMechanisms) (E : SynapticPlasticityEvidence P) : SynapticPlasticityClosed P := by
  exact And.intro E.longTermPotentiationClosed
    (And.intro E.longTermDepressionClosed
      (And.intro E.calciumSignalingDependenceClosed
        (And.intro E.glutamateReceptorTraffickingClosed E.spineMorphologyChangesClosed)))

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse