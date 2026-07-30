import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

structure LargeSubunit where
  rRNA_23S : Type
  ribosomalProteins : Type
  peptidylTransferaseCenter : Prop
  centralProtuberance : Prop

definitionLargeSubunitClosed (L : LargeSubunit) : Prop :=
  L.peptidylTransferaseCenter ∧ L.centralProtuberance

theorem large_subunit_closed_from_structure (L : LargeSubunit) : definitionLargeSubunitClosed L := by
  exact And.intro L.peptidylTransferaseCenter L.centralProtuberance

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse