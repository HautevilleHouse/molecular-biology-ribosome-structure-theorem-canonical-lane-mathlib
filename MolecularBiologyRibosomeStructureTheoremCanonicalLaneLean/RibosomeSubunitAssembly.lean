import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

structure RibosomalSubunitAssembly where
  largeSubunit : Type u
  smallSubunit : Type v
  assemblyFactors : Type w
  rnaComponents : Prop
  proteinComponents : Prop
  inVitroReconstitution : Prop
  inVivoAssemblyPathway : Prop
  assemblyFactorsTerm : assemblyFactors
  rnaComponentsTerm : rnaComponents
  proteinComponentsTerm : proteinComponents
  inVitroReconstitutionTerm : inVitroReconstitution
  inVivoAssemblyPathwayTerm : inVivoAssemblyPathway

structure RibosomalSubunitEvidence (A : RibosomalSubunitAssembly) where
  assemblyFactorsClosed : A.assemblyFactors
  rnaComponentsClosed : A.rnaComponents
  proteinComponentsClosed : A.proteinComponents
  inVitroReconstitutionClosed : A.inVitroReconstitution
  inVivoAssemblyPathwayClosed : A.inVivoAssemblyPathway

def RibosomalSubunitClosed (A : RibosomalSubunitAssembly) : Prop :=
  A.assemblyFactors ∧ A.rnaComponents ∧ A.proteinComponents ∧
  A.inVitroReconstitution ∧ A.inVivoAssemblyPathway

theorem ribosomal_subunit_closed_from_evidence (A : RibosomalSubunitAssembly)
    (E : RibosomalSubunitEvidence A) : RibosomalSubunitClosed A := by
  exact And.intro E.assemblyFactorsClosed (
    And.intro E.rnaComponentsClosed (
      And.intro E.proteinComponentsClosed (
        And.intro E.inVitroReconstitutionClosed E.inVivoAssemblyPathwayClosed)))

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse
