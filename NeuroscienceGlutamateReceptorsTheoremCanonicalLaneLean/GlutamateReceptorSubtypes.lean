import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure GlutamateReceptorSubtype where
  subtypeName : String
  ionPermeability : ℝ
  conductance : ℝ
  desensitizationTimeConstant : ℝ
  agonistAffinity : ℝ

defaultGlutamateReceptorSubtypes : List GlutamateReceptorSubtype :=
  [ { subtypeName := "AMPA", ionPermeability := 0.8, conductance := 10.0, desensitizationTimeConstant := 0.005, agonistAffinity := 1e-6 },
    { subtypeName := "NMDA", ionPermeability := 0.9, conductance := 50.0, desensitizationTimeConstant := 0.1, agonistAffinity := 3e-6 },
    { subtypeName := "Kainate", ionPermeability := 0.7, conductance := 8.0, desensitizationTimeConstant := 0.01, agonistAffinity := 5e-6 } ]

structure GlutamateReceptorSubtypeEvidence (R : GlutamateReceptorSubtype) where
  ionPermeabilityClosed : R.ionPermeability > 0 ∧ R.ionPermeability ≤ 1
  conductanceClosed : R.conductance > 0
  desensitizationTimeConstantClosed : R.desensitizationTimeConstant > 0
  agonistAffinityClosed : R.agonistAffinity > 0

def GlutamateReceptorSubtypeClosed (R : GlutamateReceptorSubtype) : Prop :=
  (R.ionPermeability > 0 ∧ R.ionPermeability ≤ 1) ∧
  R.conductance > 0 ∧ R.desensitizationTimeConstant > 0 ∧ R.agonistAffinity > 0

theorem glutamate_receptor_subtype_closed_from_evidence (R : GlutamateReceptorSubtype) (E : GlutamateReceptorSubtypeEvidence R) :
    GlutamateReceptorSubtypeClosed R := by
  exact And.intro E.ionPermeabilityClosed
    (And.intro E.conductanceClosed
      (And.intro E.desensitizationTimeConstantClosed E.agonistAffinityClosed))

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse