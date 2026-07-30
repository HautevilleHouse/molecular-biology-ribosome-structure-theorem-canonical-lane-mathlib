import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

structure RibosomeEvolution where
  phylogeneticConservation : Prop
  rnaCoreConservation : Prop
  proteinComponentDiversity : Prop
  phylogeneticConservationTerm : phylogeneticConservation
  rnaCoreConservationTerm : rnaCoreConservation
  proteinComponentDiversityTerm : proteinComponentDiversity

structure RibosomeEvolutionEvidence (E : RibosomeEvolution) where
  phylogeneticConservationClosed : E.phylogeneticConservation
  rnaCoreConservationClosed : E.rnaCoreConservation
  proteinComponentDiversityClosed : E.proteinComponentDiversity

def RibosomeEvolutionClosed (E : RibosomeEvolution) : Prop :=
  E.phylogeneticConservation ∧ E.rnaCoreConservation ∧ E.proteinComponentDiversity

theorem ribosome_evolution_closed_from_evidence (E : RibosomeEvolution)
    (Ev : RibosomeEvolutionEvidence E) : RibosomeEvolutionClosed E := by
  exact And.intro Ev.phylogeneticConservationClosed (
    And.intro Ev.rnaCoreConservationClosed Ev.proteinComponentDiversityClosed)

structure AntibioticTargets where
  bindingSites : Prop
  resistanceMechanisms : Prop
  drugDesignInsights : Prop
  bindingSitesTerm : bindingSites
  resistanceMechanismsTerm : resistanceMechanisms
  drugDesignInsightsTerm : drugDesignInsights

structure AntibioticTargetsEvidence (A : AntibioticTargets) where
  bindingSitesClosed : A.bindingSites
  resistanceMechanismsClosed : A.resistanceMechanisms
  drugDesignInsightsClosed : A.drugDesignInsights

def AntibioticTargetsClosed (A : AntibioticTargets) : Prop :=
  A.bindingSites ∧ A.resistanceMechanisms ∧ A.drugDesignInsights

theorem antibiotic_targets_closed_from_evidence (A : AntibioticTargets)
    (E : AntibioticTargetsEvidence A) : AntibioticTargetsClosed A := by
  exact And.intro E.bindingSitesClosed (
    And.intro E.resistanceMechanismsClosed E.drugDesignInsightsClosed)

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse
