import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure HebbianPlasticityRule where
  preSynapticActivity : Prop
  postSynapticActivity : Prop
  synapticStrengthChange : Float
  timeWindow : Float

def hebbianLTP : HebbianPlasticityRule := {
  preSynapticActivity := true,
  postSynapticActivity := true,
  synapticStrengthChange := 0.1,
  timeWindow := 20.0
}

def hebbianLTD : HebbianPlasticityRule := {
  preSynapticActivity := true,
  postSynapticActivity := false,
  synapticStrengthChange := -0.1,
  timeWindow := 20.0
}

structure STDPRule where
  prePostTiming : Float
  synapticChange : Float

def stdpCurve (dt : Float) : Float :=
  if dt > 0 then
    -0.1 * Float.exp(-dt / 20.0)
  else if dt < 0 then
    0.1 * Float.exp(dt / 20.0)
  else
    0.0

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse