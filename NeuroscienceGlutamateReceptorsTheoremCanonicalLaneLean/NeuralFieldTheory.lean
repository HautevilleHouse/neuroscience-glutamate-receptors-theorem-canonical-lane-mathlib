import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure NeuralFieldTheory where
  firingRateModel : Prop
  connectivityKernel : Prop
  wavePropagation : Prop
  bifurcationAnalysis : Prop

structure NeuralFieldTheoryEvidence (N : NeuralFieldTheory) where
  firingRateModelClosed : N.firingRateModel
  connectivityKernelClosed : N.connectivityKernel
  wavePropagationClosed : N.wavePropagation
  bifurcationAnalysisClosed : N.bifurcationAnalysis

def NeuralFieldTheoryClosed (N : NeuralFieldTheory) : Prop :=
  N.firingRateModel ∧ N.connectivityKernel ∧ N.wavePropagation ∧ N.bifurcationAnalysis

theorem neural_field_theory_closed_from_evidence
    (N : NeuralFieldTheory) (E : NeuralFieldTheoryEvidence N) :
    NeuralFieldTheoryClosed N := by
  exact And.intro E.firingRateModelClosed
    (And.intro E.connectivityKernelClosed
      (And.intro E.wavePropagationClosed E.bifurcationAnalysisClosed))

end HautevilleHouse
end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean