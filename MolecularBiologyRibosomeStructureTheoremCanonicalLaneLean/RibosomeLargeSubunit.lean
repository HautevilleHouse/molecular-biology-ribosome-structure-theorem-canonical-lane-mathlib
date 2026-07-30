import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

structure LargeSubunit where
  rRNAChain : Type
  ribosomalProteins : Type
  peptidylTransferaseCenter : Prop
  exitTunnelFormation : Prop

structure LargeSubunitEvidence (L : LargeSubunit) where
  peptidylTransferaseCenterClosed : L.peptidylTransferaseCenter
  exitTunnelFormationClosed : L.exitTunnelFormation

def LargeSubunitClosed (L : LargeSubunit) : Prop :=
  L.peptidylTransferaseCenter ∧ L.exitTunnelFormation

theorem large_subunit_closed_from_evidence (L : LargeSubunit) (E : LargeSubunitEvidence L) : LargeSubunitClosed L := by
  exact And.intro E.peptidylTransferaseCenterClosed E.exitTunnelFormationClosed

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse