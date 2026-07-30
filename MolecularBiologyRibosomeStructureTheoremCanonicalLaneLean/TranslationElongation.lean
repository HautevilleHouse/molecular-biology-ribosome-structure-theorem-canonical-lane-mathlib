import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

/-- Translation elongation cycle. -/
struct TranslationElongation where
  elongationFactors : List String
  gtpHydrolysis : Bool
  translocationState : String
  elongationProcessive : Prop

definition TranslationElongationClosed (E : TranslationElongation) : Prop :=
  E.elongationProcessive

theorem translation_elongation_closed (E : TranslationElongation) : TranslationElongationClosed E :=
  E.elongationProcessive

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse
