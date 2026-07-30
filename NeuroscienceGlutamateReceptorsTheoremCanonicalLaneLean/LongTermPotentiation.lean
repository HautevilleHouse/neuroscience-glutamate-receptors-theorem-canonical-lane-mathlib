import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure LongTermPotentiationPackage where
  calciumInfluxThreshold : ℝ
  camkiiActivationRate : ℝ
  ampaReceptorPhosphorylationRate : ℝ
  ampaReceptorInsertionRate : ℝ
  synapticStrengthIncrease : ℝ
  maintenanceDuration : ℝ

structure LongTermPotentiationEvidence (L : LongTermPotentiationPackage) where
  calciumInfluxThresholdClosed : L.calciumInfluxThreshold > 0
  camkiiActivationRateClosed : L.camkiiActivationRate > 0
  ampaReceptorPhosphorylationRateClosed : L.ampaReceptorPhosphorylationRate > 0
  ampaReceptorInsertionRateClosed : L.ampaReceptorInsertionRate > 0
  synapticStrengthIncreaseClosed : L.synapticStrengthIncrease > 1
  maintenanceDurationClosed : L.maintenanceDuration > 0

def LongTermPotentiationClosed (L : LongTermPotentiationPackage) : Prop :=
  L.calciumInfluxThreshold > 0 ∧ L.camkiiActivationRate > 0 ∧
  L.ampaReceptorPhosphorylationRate > 0 ∧ L.ampaReceptorInsertionRate > 0 ∧
  L.synapticStrengthIncrease > 1 ∧ L.maintenanceDuration > 0

theorem long_term_potentiation_closed_from_evidence (L : LongTermPotentiationPackage) (E : LongTermPotentiationEvidence L) :
    LongTermPotentiationClosed L := by
  exact And.intro E.calciumInfluxThresholdClosed
    (And.intro E.camkiiActivationRateClosed
      (And.intro E.ampaReceptorPhosphorylationRateClosed
        (And.intro E.ampaReceptorInsertionRateClosed
          (And.intro E.synapticStrengthIncreaseClosed E.maintenanceDurationClosed))))

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse