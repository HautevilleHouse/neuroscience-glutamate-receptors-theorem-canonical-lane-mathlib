import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure HodgkinHuxleyEquations where
  membranePotential : Prop
  sodiumChannel : Prop
  potassiumChannel : Prop
  leakChannel : Prop
  ionCurrents : Prop

structure HodgkinHuxleyEquationsEvidence (H : HodgkinHuxleyEquations) where
  membranePotentialClosed : H.membranePotential
  sodiumChannelClosed : H.sodiumChannel
  potassiumChannelClosed : H.potassiumChannel
  leakChannelClosed : H.leakChannel
  ionCurrentsClosed : H.ionCurrents

def HodgkinHuxleyEquationsClosed (H : HodgkinHuxleyEquations) : Prop :=
  H.membranePotential ∧ H.sodiumChannel ∧ H.potassiumChannel ∧ H.leakChannel ∧ H.ionCurrents

theorem hodgkin_huxley_equations_closed_from_evidence
    (H : HodgkinHuxleyEquations) (E : HodgkinHuxleyEquationsEvidence H) :
    HodgkinHuxleyEquationsClosed H := by
  exact And.intro E.membranePotentialClosed
    (And.intro E.sodiumChannelClosed
      (And.intro E.potassiumChannelClosed
        (And.intro E.leakChannelClosed E.ionCurrentsClosed)))

end HautevilleHouse
end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean