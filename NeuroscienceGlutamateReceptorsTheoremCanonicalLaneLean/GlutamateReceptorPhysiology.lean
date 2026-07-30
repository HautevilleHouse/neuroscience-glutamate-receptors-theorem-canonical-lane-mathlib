import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure GlutamateReceptor where
  subtype : String
  agonistBinding : Prop
  ionConductance : Prop
  desensitization : Prop

structure GlutamateReceptorPhysiology where
  ampa : GlutamateReceptor
  nmda : GlutamateReceptor
  kainate : GlutamateReceptor
  mGluR : GlutamateReceptor
  ampaFunctional : Prop
  nmdaFunctional : Prop
  kainateFunctional : Prop
  mGluRFunctional : Prop

structure GlutamateReceptorPhysiologyEvidence (G : GlutamateReceptorPhysiology) where
  ampaFunctionalClosed : G.ampaFunctional
  nmdaFunctionalClosed : G.nmdaFunctional
  kainateFunctionalClosed : G.kainateFunctional
  mGluRFunctionalClosed : G.mGluRFunctional

def GlutamateReceptorPhysiologyClosed (G : GlutamateReceptorPhysiology) : Prop :=
  G.ampaFunctional ∧ G.nmdaFunctional ∧ G.kainateFunctional ∧ G.mGluRFunctional

theorem glutamate_receptor_physiology_closed_from_evidence
    (G : GlutamateReceptorPhysiology) (E : GlutamateReceptorPhysiologyEvidence G) :
    GlutamateReceptorPhysiologyClosed G := by
  exact And.intro E.ampaFunctionalClosed
    (And.intro E.nmdaFunctionalClosed
      (And.intro E.kainateFunctionalClosed E.mGluRFunctionalClosed))

end HautevilleHouse
end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean