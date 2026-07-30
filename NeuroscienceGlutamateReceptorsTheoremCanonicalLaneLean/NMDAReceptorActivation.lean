import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure NMDAReceptorActivation where
  glutamateBinding : Prop
  glycineBinding : Prop
  magnesiumBlock : Prop
  calciumPermeability : Prop
  glutamateBindingClosed : glutamateBinding
  glycineBindingClosed : glycineBinding
  magnesiumBlockClosed : magnesiumBlock
  calciumPermeabilityClosed : calciumPermeability

def NMDAReceptorActivationClosed (N : NMDAReceptorActivation) : Prop :=
  N.glutamateBinding ∧ N.glycineBinding ∧ N.magnesiumBlock ∧ N.calciumPermeability

theorem nmda_receptor_activation_closed_from_evidence (N : NMDAReceptorActivation) : NMDAReceptorActivationClosed N := by
  exact And.intro N.glutamateBindingClosed (And.intro N.glycineBindingClosed (And.intro N.magnesiumBlockClosed N.calciumPermeabilityClosed))

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse