import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure HodgkinHuxleyModel where
  membraneCapacitance : Float
  sodiumConductance : Float
  potassiumConductance : Float
  leakConductance : Float
  sodiumEquilibriumPotential : Float
  potassiumEquilibriumPotential : Float
  leakEquilibriumPotential : Float
  gatingVariables : List String

def defaultHodgkinHuxleyModel : HodgkinHuxleyModel := {
  membraneCapacitance := 1.0,
  sodiumConductance := 120.0,
  potassiumConductance := 36.0,
  leakConductance := 0.3,
  sodiumEquilibriumPotential := 115.0,
  potassiumEquilibriumPotential := -12.0,
  leakEquilibriumPotential := 10.6,
  gatingVariables := ["m", "n", "h"]
}

structure ActionPotential where
  threshold : Float
  peak : Float
  afterHyperpolarization : Float
  duration : Float

def actionPotentialProperties : ActionPotential := {
  threshold := -55.0,
  peak := 40.0,
  afterHyperpolarization := -70.0,
  duration := 2.0
}

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse