import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean.BridgeLemmas
import MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

def ConstrainedRibosomeStructureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ribosome_structure_endgame (A : AdmissibleClass) :
    ConstrainedRibosomeStructureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse
