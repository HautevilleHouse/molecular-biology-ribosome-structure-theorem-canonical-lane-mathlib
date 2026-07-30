import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean.RibosomeStructureAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

definition ribosomeGateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem ribosome_gate_from_admissible_class (A : AdmissibleClass) :
    ribosomeGateClosed A := by
  exact A.gateWitness

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse