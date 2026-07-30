import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

structure mRNATranslationPDE where
  elongationCycleDynamics : Prop
  peptidylTransferReaction : Prop
  translocationStep : Prop
  elongationCycleDynamicsEvidence : elongationCycleDynamics
  peptidylTransferReactionEvidence : peptidylTransferReaction
  translocationStepEvidence : translocationStep

structure mRNATranslationPDEEvidence (M : mRNATranslationPDE) where
  elongationCycleDynamicsClosed : M.elongationCycleDynamics
  peptidylTransferReactionClosed : M.peptidylTransferReaction
  translocationStepClosed : M.translocationStep

def mRNATranslationPDEClosed (M : mRNATranslationPDE) : Prop :=
  M.elongationCycleDynamics ∧ M.peptidylTransferReaction ∧ M.translocationStep

theorem m_rna_translation_pde_closed_from_evidence
    (M : mRNATranslationPDE) (E : mRNATranslationPDEEvidence M) :
    mRNATranslationPDEClosed M := by
  exact And.intro E.elongationCycleDynamicsClosed
    (And.intro E.peptidylTransferReactionClosed E.translocationStepClosed)

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse