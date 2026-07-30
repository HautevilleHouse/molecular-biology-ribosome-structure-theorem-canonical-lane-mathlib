import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

structure SmallSubunit where
  rRNA_16S : Type
  smallRibosomalProteins : Type
  decodingCenter : Prop
  antiShineDalgarno : Prop

definitionSmallSubunitClosed (S : SmallSubunit) : Prop :=
  S.decodingCenter ∧ S.antiShineDalgarno

theorem small_subunit_closed_from_structure (S : SmallSubunit) : definitionSmallSubunitClosed S := by
  exact And.intro S.decodingCenter S.antiShineDalgarno

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse