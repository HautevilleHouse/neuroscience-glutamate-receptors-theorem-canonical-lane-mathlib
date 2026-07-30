import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure ExcitotoxicityPathwayPackage where
  excessiveGlutamateConcentration : ℝ
  nmdaReceptorOveractivation : ℝ
  calciumOverload : ℝ
  mitochondrialDysfunctionMarker : ℝ
  reactiveOxygenSpeciesLevel : ℝ
  cellDeathProbability : ℝ

structure ExcitotoxicityPathwayEvidence (E : ExcitotoxicityPathwayPackage) where
  excessiveGlutamateConcentrationClosed : E.excessiveGlutamateConcentration > 0.001
  nmdaReceptorOveractivationClosed : E.nmdaReceptorOveractivation > 0.5
  calciumOverloadClosed : E.calciumOverload > 1e-6
  mitochondrialDysfunctionMarkerClosed : E.mitochondrialDysfunctionMarker > 0
  reactiveOxygenSpeciesLevelClosed : E.reactiveOxygenSpeciesLevel > 0
  cellDeathProbabilityClosed : E.cellDeathProbability > 0 ∧ E.cellDeathProbability ≤ 1

def ExcitotoxicityPathwayClosed (E : ExcitotoxicityPathwayPackage) : Prop :=
  E.excessiveGlutamateConcentration > 0.001 ∧
  E.nmdaReceptorOveractivation > 0.5 ∧
  E.calciumOverload > 1e-6 ∧
  E.mitochondrialDysfunctionMarker > 0 ∧
  E.reactiveOxygenSpeciesLevel > 0 ∧
  (E.cellDeathProbability > 0 ∧ E.cellDeathProbability ≤ 1)

theorem excitotoxicity_pathway_closed_from_evidence (E : ExcitotoxicityPathwayPackage) (Ev : ExcitotoxicityPathwayEvidence E) :
    ExcitotoxicityPathwayClosed E := by
  exact And.intro Ev.excessiveGlutamateConcentrationClosed
    (And.intro Ev.nmdaReceptorOveractivationClosed
      (And.intro Ev.calciumOverloadClosed
        (And.intro Ev.mitochondrialDysfunctionMarkerClosed
          (And.intro Ev.reactiveOxygenSpeciesLevelClosed Ev.cellDeathProbabilityClosed))))

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse