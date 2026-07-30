import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean.RibosomeSubunitStructure
import HautevilleHouse.MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean.RibosomeSmallSubunit

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

structure RibosomeAssembly (L : LargeSubunit) (S : SmallSubunit) where
  subunitsJoined : Prop
  mrnaBindingSite : Prop
  trnaBindingSites : Prop
  peptideExitTunnel : Prop

definitionRibosomeAssemblyClosed (L : LargeSubunit) (S : SmallSubunit) (R : RibosomeAssembly L S) : Prop :=
  R.subunitsJoined ∧ R.mrnaBindingSite ∧ R.trnaBindingSites ∧ R.peptideExitTunnel

theorem ribosome_assembly_closed_from_structure (L : LargeSubunit) (S : SmallSubunit) (R : RibosomeAssembly L S) : definitionRibosomeAssemblyClosed L S R := by
  exact And.intro R.subunitsJoined (And.intro R.mrnaBindingSite (And.intro R.trnaBindingSites R.peptideExitTunnel))

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse