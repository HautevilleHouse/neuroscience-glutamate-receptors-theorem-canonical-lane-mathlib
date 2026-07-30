import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure NeuralModelingPackage where
  hodgkinHuxleyEquations : Prop
  hhEquationsValidated : Prop
  hebbianLearningRule : Prop
  hebbianRuleValidated : Prop
  neuralFieldTheory : Prop
  neuralFieldTheoryValidated : Prop
  hodgkinHuxleyEquationsClosed : hodgkinHuxleyEquations
  hhEquationsValidatedClosed : hhEquationsValidated
  hebbianLearningRuleClosed : hebbianLearningRule
  hebbianRuleValidatedClosed : hebbianRuleValidated
  neuralFieldTheoryClosed : neuralFieldTheory
  neuralFieldTheoryValidatedClosed : neuralFieldTheoryValidated

structure NeuralModelingEvidence (P : NeuralModelingPackage) where
  hodgkinHuxleyEquationsClosed : P.hodgkinHuxleyEquations
  hhEquationsValidatedClosed : P.hhEquationsValidated
  hebbianLearningRuleClosed : P.hebbianLearningRule
  hebbianRuleValidatedClosed : P.hebbianRuleValidated
  neuralFieldTheoryClosed : P.neuralFieldTheory
  neuralFieldTheoryValidatedClosed : P.neuralFieldTheoryValidated

def NeuralModelingClosed (P : NeuralModelingPackage) : Prop :=
  P.hodgkinHuxleyEquations ∧ P.hhEquationsValidated ∧
  P.hebbianLearningRule ∧ P.hebbianRuleValidated ∧
  P.neuralFieldTheory ∧ P.neuralFieldTheoryValidated

theorem neural_modeling_closed_from_evidence (P : NeuralModelingPackage) (E : NeuralModelingEvidence P) : NeuralModelingClosed P := by
  exact And.intro E.hodgkinHuxleyEquationsClosed
    (And.intro E.hhEquationsValidatedClosed
      (And.intro E.hebbianLearningRuleClosed
        (And.intro E.hebbianRuleValidatedClosed
          (And.intro E.neuralFieldTheoryClosed E.neuralFieldTheoryValidatedClosed))))

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse