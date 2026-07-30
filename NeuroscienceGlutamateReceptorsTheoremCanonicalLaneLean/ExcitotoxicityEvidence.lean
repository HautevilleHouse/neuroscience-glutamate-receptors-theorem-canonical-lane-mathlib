import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure ExcitotoxicityMechanisms where
  excessiveGlutamateRelease : Prop
  nMDAROveractivation : Prop
  calciumOverload : Prop
  mitochondrialDysfunction : Prop
  oxidativeStress : Prop
  cellDeathPathways : Prop
  excessiveGlutamateReleaseClosed : excessiveGlutamateRelease
  nMDAROveractivationClosed : nMDAROveractivation
  calciumOverloadClosed : calciumOverload
  mitochondrialDysfunctionClosed : mitochondrialDysfunction
  oxidativeStressClosed : oxidativeStress
  cellDeathPathwaysClosed : cellDeathPathways

structure ExcitotoxicityEvidence (E : ExcitotoxicityMechanisms) where
  excessiveGlutamateReleaseClosed : E.excessiveGlutamateRelease
  nMDAROveractivationClosed : E.nMDAROveractivation
  calciumOverloadClosed : E.calciumOverload
  mitochondrialDysfunctionClosed : E.mitochondrialDysfunction
  oxidativeStressClosed : E.oxidativeStress
  cellDeathPathwaysClosed : E.cellDeathPathways

def ExcitotoxicityClosed (E : ExcitotoxicityMechanisms) : Prop :=
  E.excessiveGlutamateRelease ∧ E.nMDAROveractivation ∧
  E.calciumOverload ∧ E.mitochondrialDysfunction ∧
  E.oxidativeStress ∧ E.cellDeathPathways

theorem excitotoxicity_closed_from_evidence (E : ExcitotoxicityMechanisms) (Ev : ExcitotoxicityEvidence E) : ExcitotoxicityClosed E := by
  exact And.intro Ev.excessiveGlutamateReleaseClosed
    (And.intro Ev.nMDAROveractivationClosed
      (And.intro Ev.calciumOverloadClosed
        (And.intro Ev.mitochondrialDysfunctionClosed
          (And.intro Ev.oxidativeStressClosed Ev.cellDeathPathwaysClosed))))

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse