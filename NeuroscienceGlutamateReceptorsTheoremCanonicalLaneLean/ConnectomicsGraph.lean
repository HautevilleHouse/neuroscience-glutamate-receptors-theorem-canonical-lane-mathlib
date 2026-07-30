import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure ConnectomeNode where
  nodeId : Nat
  regionName : String
  neuronCount : Nat

def defaultNodes : List ConnectomeNode :=
  [{ nodeId := 1, regionName := "Cortex", neuronCount := 16000000000 },
   { nodeId := 2, regionName := "Thalamus", neuronCount := 10000000 },
   { nodeId := 3, regionName := "Hippocampus", neuronCount := 10000000 }]

structure SynapticConnection where
  sourceNode : Nat
  targetNode : Nat
  synapseCount : Nat
  neurotransmitter : String

def glutamateConnections : List SynapticConnection :=
  [{ sourceNode := 1, targetNode := 2, synapseCount := 1000000, neurotransmitter := "glutamate" },
   { sourceNode := 2, targetNode := 1, synapseCount := 500000, neurotransmitter := "glutamate" }]

structure Connectome where
  nodes : List ConnectomeNode
  edges : List SynapticConnection
  directed : Bool

def defaultConnectome : Connectome := {
  nodes := defaultNodes,
  edges := glutamateConnections,
  directed := true
}

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse