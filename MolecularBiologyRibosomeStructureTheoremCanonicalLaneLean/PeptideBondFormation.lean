import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

/-- Peptide bond formation site. -/
struct PeptideBondFormation where
  peptidylTransferaseCenter : String
  catalyticResidues : List String
  reactionMechanism : String
  bondFormationCatalyzed : Prop

definition PeptideBondFormationClosed (P : PeptideBondFormation) : Prop :=
  P.bondFormationCatalyzed

theorem peptide_bond_formation_closed (P : PeptideBondFormation) : PeptideBondFormationClosed P :=
  P.bondFormationCatalyzed

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse
