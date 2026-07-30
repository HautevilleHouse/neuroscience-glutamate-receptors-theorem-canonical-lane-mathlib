import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure GlutamateReceptorType where
  receptorName : String
  ionotropic : Bool
  metabotropic : Bool
  subunitComposition : String
  physiologicalFunction : String

def AMPAReceptor : GlutamateReceptorType := {
  receptorName := "AMPA",
  ionotropic := true,
  metabotropic := false,
  subunitComposition := "GluA1-4",
  physiologicalFunction := "fast excitatory neurotransmission"
}

def NMDAReceptor : GlutamateReceptorType := {
  receptorName := "NMDA",
  ionotropic := true,
  metabotropic := false,
  subunitComposition := "GluN1, GluN2A-D",
  physiologicalFunction := "slow excitatory neurotransmission, synaptic plasticity"
}

def KainateReceptor : GlutamateReceptorType := {
  receptorName := "Kainate",
  ionotropic := true,
  metabotropic := false,
  subunitComposition := "GluK1-5",
  physiologicalFunction := "modulation of neurotransmitter release"
}

def mGluR : GlutamateReceptorType := {
  receptorName := "metabotropic",
  ionotropic := false,
  metabotropic := true,
  subunitComposition := "mGluR1-8",
  physiologicalFunction := "modulation of synaptic transmission and plasticity"
}

structure GlutamateReceptorFamily where
  receptors : List GlutamateReceptorType
  familyFunction : String

def ionotropicReceptors : GlutamateReceptorFamily := {
  receptors := [AMPAReceptor, NMDAReceptor, KainateReceptor],
  familyFunction := "ion channel gating"
}

def metabotropicReceptors : GlutamateReceptorFamily := {
  receptors := [mGluR],
  familyFunction := "G-protein coupled signaling"
}

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse