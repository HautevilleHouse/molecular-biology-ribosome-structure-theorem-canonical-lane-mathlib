import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean.BridgeLemmas_Molecular
import MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean.GateLemmas_Molecular

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

definition ConstrainedRibosomeStructureClosure (A : AdmissibleClass) : Prop :=
  ribosomeBridgeClosed A ∧ ribosomeGateClosed A

theorem constrained_ribosome_structure_endgame (A : AdmissibleClass) :
    ConstrainedRibosomeStructureClosure A := by
  exact And.intro (ribosome_bridge_from_admissible_class A) (ribosome_gate_from_admissible_class A)

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse