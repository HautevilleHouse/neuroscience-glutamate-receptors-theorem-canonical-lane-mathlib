import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure HebbianPlasticityPackage (G : GlutamateReceptorKineticsPackage) where
  spikeTimingDependentPlasticity : Prop
  calciumDynamics : Prop
  longTermPotentiationInduced : Prop
  longTermDepressionInduced : Prop
  synapticWeightUpdated : Prop

structure HebbianPlasticityEvidence {G : GlutamateReceptorKineticsPackage}
    (H : HebbianPlasticityPackage G) where
  spikeTimingDependentPlasticityClosed : H.spikeTimingDependentPlasticity
  calciumDynamicsClosed : H.calciumDynamics
  longTermPotentiationInducedClosed : H.longTermPotentiationInduced
  longTermDepressionInducedClosed : H.longTermDepressionInduced
  synapticWeightUpdatedClosed : H.synapticWeightUpdated

def HebbianPlasticityClosed {G : GlutamateReceptorKineticsPackage}
    (H : HebbianPlasticityPackage G) : Prop :=
  H.spikeTimingDependentPlasticity ∧ H.calciumDynamics ∧
  H.longTermPotentiationInduced ∧ H.longTermDepressionInduced ∧
  H.synapticWeightUpdated

theorem hebbian_plasticity_closed_from_evidence
    {G : GlutamateReceptorKineticsPackage} (H : HebbianPlasticityPackage G)
    (E : HebbianPlasticityEvidence H) : HebbianPlasticityClosed H := by
  exact And.intro E.spikeTimingDependentPlasticityClosed
    (And.intro E.calciumDynamicsClosed
      (And.intro E.longTermPotentiationInducedClosed
        (And.intro E.longTermDepressionInducedClosed
          E.synapticWeightUpdatedClosed)))

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse
