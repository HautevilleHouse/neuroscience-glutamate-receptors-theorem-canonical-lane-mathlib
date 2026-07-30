import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure MembranePotentialPackage where
  restingPotential : ℝ
  actionPotentialThreshold : ℝ
  sodiumChannelDensity : ℝ
  potassiumChannelDensity : ℝ
  leakChannelConductance : ℝ
  capacitance : ℝ
  nernstPotentialForSodium : ℝ
  nernstPotentialForPotassium : ℝ
  nernstPotentialForLeak : ℝ

structure MembranePotentialEvidence (M : MembranePotentialPackage) where
  restingPotentialClosed : M.restingPotential = -0.07
  actionPotentialThresholdClosed : M.actionPotentialThreshold = -0.055
  sodiumChannelDensityClosed : M.sodiumChannelDensity > 0
  potassiumChannelDensityClosed : M.potassiumChannelDensity > 0
  leakChannelConductanceClosed : M.leakChannelConductance > 0
  capacitanceClosed : M.capacitance > 0
  nernstPotentialForSodiumClosed : M.nernstPotentialForSodium = 0.050
  nernstPotentialForPotassiumClosed : M.nernstPotentialForPotassium = -0.077
  nernstPotentialForLeakClosed : M.nernstPotentialForLeak = -0.054

def MembranePotentialClosed (M : MembranePotentialPackage) : Prop :=
  M.restingPotential = -0.07 ∧ M.actionPotentialThreshold = -0.055 ∧
  M.sodiumChannelDensity > 0 ∧ M.potassiumChannelDensity > 0 ∧
  M.leakChannelConductance > 0 ∧ M.capacitance > 0 ∧
  M.nernstPotentialForSodium = 0.050 ∧ M.nernstPotentialForPotassium = -0.077 ∧
  M.nernstPotentialForLeak = -0.054

theorem membrane_potential_closed_from_evidence (M : MembranePotentialPackage) (E : MembranePotentialEvidence M) :
    MembranePotentialClosed M := by
  exact And.intro E.restingPotentialClosed
    (And.intro E.actionPotentialThresholdClosed
      (And.intro E.sodiumChannelDensityClosed
        (And.intro E.potassiumChannelDensityClosed
          (And.intro E.leakChannelConductanceClosed
            (And.intro E.capacitanceClosed
              (And.intro E.nernstPotentialForSodiumClosed
                (And.intro E.nernstPotentialForPotassiumClosed
                  E.nernstPotentialForLeakClosed)))))))

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse