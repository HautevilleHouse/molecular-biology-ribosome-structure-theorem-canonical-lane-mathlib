import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean.RibosomeStructureAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

definition ribosomeBridgeClosed (A : AdmissibleClass) : Prop :=
  match A.object with
  | .mk obj => 
    let ribObj := obj
    ribObj.structureKnown

theorem ribosome_bridge_from_admissible_class (A : AdmissibleClass) :
    ribosomeBridgeClosed A := by
  unfold ribosomeBridgeClosed
  -- Using the gateWitness to extract the endpoint
  have h := A.gateWitness
  cases h with
  | inl h_end => 
    -- endpointSatisfied implies structureKnown via definition
    unfold RibosomeStructureAdmissibleClass at h_end
    -- But we need to get the object
    sorry
  | inr h_rem => 
    sorry

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse