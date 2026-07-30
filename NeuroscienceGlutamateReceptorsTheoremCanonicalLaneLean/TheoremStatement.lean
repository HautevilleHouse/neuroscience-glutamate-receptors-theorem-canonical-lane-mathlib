import NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  constrainedStatement : String
  carriedRemainder : String
  deriving Repr

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "neuroscience-glutamate-receptors-canonical-lane",
  theoremName := "Glutamate Receptors Theorem",
  theoremObject := "Synaptic plasticity mediated by AMPA and NMDA receptors under Hebbian learning rules",
  classicalBoundary := "biophysical parameters (channel conductance, kinetics) and neuronal network connectivity",
  constrainedStatement := "Admissible-class bridge closure for glutamate receptor dynamics and LTP/LTD induction",
  carriedRemainder := "full biological complexity remains open; classical boundary carried outside admissible closure"
}

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse
