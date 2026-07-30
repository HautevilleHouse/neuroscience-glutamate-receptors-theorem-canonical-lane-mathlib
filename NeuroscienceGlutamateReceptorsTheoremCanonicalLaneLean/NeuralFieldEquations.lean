import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure NeuralFieldModel where
  spatialDimension : Nat
  timeConstant : Float
  spaceConstant : Float
  connectivityKernel : String
  activationFunction : String

def WilsonCowanModel : NeuralFieldModel := {
  spatialDimension := 1,
  timeConstant := 10.0,
  spaceConstant := 5.0,
  connectivityKernel := "Gaussian",
  activationFunction := "sigmoid"
}

structure NeuralFieldDynamics where
  firingRateField : Prop
  synapticInputField : Prop
  externalInput : Prop
  noiseTerm : Prop

def basicDynamics : NeuralFieldDynamics := {
  firingRateField := true,
  synapticInputField := true,
  externalInput := true,
  noiseTerm := false
}

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse