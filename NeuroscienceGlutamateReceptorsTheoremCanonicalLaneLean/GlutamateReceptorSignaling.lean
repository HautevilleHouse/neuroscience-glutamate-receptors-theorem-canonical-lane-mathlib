import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure GlutamateReceptorSubtypes where
  nMDAR : Prop
  aMPAR : Prop
  kainateReceptor : Prop
  mGluR : Prop
  nMDARClosed : nMDAR
  aMPARClosed : aMPAR
  kainateReceptorClosed : kainateReceptor
  mGluRClosed : mGluR

structure GlutamateReceptorEvidence (R : GlutamateReceptorSubtypes) where
  nMDARClosed : R.nMDAR
  aMPARClosed : R.aMPAR
  kainateReceptorClosed : R.kainateReceptor
  mGluRClosed : R.mGluR

def GlutamateReceptorClosed (R : GlutamateReceptorSubtypes) : Prop :=
  R.nMDAR ∧ R.aMPAR ∧ R.kainateReceptor ∧ R.mGluR

theorem glutamate_receptor_closed_from_evidence (R : GlutamateReceptorSubtypes) (E : GlutamateReceptorEvidence R) : GlutamateReceptorClosed R := by
  exact And.intro E.nMDARClosed (And.intro E.aMPARClosed (And.intro E.kainateReceptorClosed E.mGluRClosed))

structure GlutamateSignalTransduction where
  calciumInflux : Prop
  downstreamKinaseActivation : Prop
  geneExpressionRegulation : Prop
  calciumInfluxClosed : calciumInflux
  downstreamKinaseActivationClosed : downstreamKinaseActivation
  geneExpressionRegulationClosed : geneExpressionRegulation

structure GlutamateSignalEvidence (S : GlutamateSignalTransduction) where
  calciumInfluxClosed : S.calciumInflux
  downstreamKinaseActivationClosed : S.downstreamKinaseActivation
  geneExpressionRegulationClosed : S.geneExpressionRegulation

def GlutamateSignalClosed (S : GlutamateSignalTransduction) : Prop :=
  S.calciumInflux ∧ S.downstreamKinaseActivation ∧ S.geneExpressionRegulation

theorem glutamate_signal_closed_from_evidence (S : GlutamateSignalTransduction) (E : GlutamateSignalEvidence S) : GlutamateSignalClosed S := by
  exact And.intro E.calciumInfluxClosed (And.intro E.downstreamKinaseActivationClosed E.geneExpressionRegulationClosed)

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse