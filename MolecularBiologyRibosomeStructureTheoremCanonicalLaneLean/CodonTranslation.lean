import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

/-- Codon-to-amino-acid translation mapping. -/
structure CodonTable where
  codons : List (String × String)
  startCodon : String
  stopCodons : List String
  translationDeterministic : Prop

definition CodonTranslationClosed (C : CodonTable) : Prop :=
  C.translationDeterministic

theorem codon_table_deterministic (C : CodonTable) : CodonTranslationClosed C :=
  C.translationDeterministic

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse
