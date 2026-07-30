import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean

structure TherapeuticTargets where
  nMDARAntagonists : Prop
  aMPARModulators : Prop
  mGluRLigands : Prop
  kynurenicAcid : Prop
  memantine : Prop
  nMDARAntagonistsClosed : nMDARAntagonists
  aMPARModulatorsClosed : aMPARModulators
  mGluRLigandsClosed : mGluRLigands
  kynurenicAcidClosed : kynurenicAcid
  memantineClosed : memantine

structure TherapeuticEvidence (T : TherapeuticTargets) where
  nMDARAntagonistsClosed : T.nMDARAntagonists
  aMPARModulatorsClosed : T.aMPARModulators
  mGluRLigandsClosed : T.mGluRLigands
  kynurenicAcidClosed : T.kynurenicAcid
  memantineClosed : T.memantine

def TherapeuticClosed (T : TherapeuticTargets) : Prop :=
  T.nMDARAntagonists ∧ T.aMPARModulators ∧
  T.mGluRLigands ∧ T.kynurenicAcid ∧ T.memantine

theorem therapeutic_closed_from_evidence (T : TherapeuticTargets) (E : TherapeuticEvidence T) : TherapeuticClosed T := by
  exact And.intro E.nMDARAntagonistsClosed
    (And.intro E.aMPARModulatorsClosed
      (And.intro E.mGluRLigandsClosed
        (And.intro E.kynurenicAcidClosed E.memantineClosed)))

end NeuroscienceGlutamateReceptorsTheoremCanonicalLaneLean
end HautevilleHouse