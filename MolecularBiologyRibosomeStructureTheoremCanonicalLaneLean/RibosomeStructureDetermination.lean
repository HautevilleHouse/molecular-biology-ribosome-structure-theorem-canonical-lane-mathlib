import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

structure CryoEMStructureDetermination where
  samplePreparation : Prop
  microscopeCollection : Prop
  imageProcessing : Prop
  threeDReconstruction : Prop
  atomicModelBuilding : Prop
  resolutionAssessment : Prop
  samplePreparationTerm : samplePreparation
  microscopeCollectionTerm : microscopeCollection
  imageProcessingTerm : imageProcessing
  threeDReconstructionTerm : threeDReconstruction
  atomicModelBuildingTerm : atomicModelBuilding
  resolutionAssessmentTerm : resolutionAssessment

structure CryoEMStructureEvidence (C : CryoEMStructureDetermination) where
  samplePreparationClosed : C.samplePreparation
  microscopeCollectionClosed : C.microscopeCollection
  imageProcessingClosed : C.imageProcessing
  threeDReconstructionClosed : C.threeDReconstruction
  atomicModelBuildingClosed : C.atomicModelBuilding
  resolutionAssessmentClosed : C.resolutionAssessment

def CryoEMStructureClosed (C : CryoEMStructureDetermination) : Prop :=
  C.samplePreparation ∧ C.microscopeCollection ∧ C.imageProcessing ∧
  C.threeDReconstruction ∧ C.atomicModelBuilding ∧ C.resolutionAssessment

theorem cryo_em_structure_closed_from_evidence (C : CryoEMStructureDetermination)
    (E : CryoEMStructureEvidence C) : CryoEMStructureClosed C := by
  exact And.intro E.samplePreparationClosed (
    And.intro E.microscopeCollectionClosed (
      And.intro E.imageProcessingClosed (
        And.intro E.threeDReconstructionClosed (
          And.intro E.atomicModelBuildingClosed E.resolutionAssessmentClosed))))

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse
