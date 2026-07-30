import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure GlutamateReceptorKineticsPackage where
  receptorType : String
  agonistConcentrationRange : Prop
  bindingRateConstant : Float
  unbindingRateConstant : Float
  openProbability : Prop
  conductance : Float
  bindingRateConstantPositive : bindingRateConstant > 0
  unbindingRateConstantPositive : unbindingRateConstant > 0
  conductancePositive : conductance > 0

structure GlutamateReceptorKineticsEvidence (G : GlutamateReceptorKineticsPackage) where
  agonistConcentrationRangeClosed : G.agonistConcentrationRange
  openProbabilityClosed : G.openProbability

def GlutamateReceptorKineticsClosed (G : GlutamateReceptorKineticsPackage) : Prop :=
  G.agonistConcentrationRange ∧ G.openProbability

theorem glutamate_receptor_kinetics_closed_from_evidence
    (G : GlutamateReceptorKineticsPackage) (E : GlutamateReceptorKineticsEvidence G) :
    GlutamateReceptorKineticsClosed G := by
  exact And.intro E.agonistConcentrationRangeClosed E.openProbabilityClosed

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse
