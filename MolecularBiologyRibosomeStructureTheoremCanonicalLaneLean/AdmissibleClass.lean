import MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : RibosomeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RibosomeWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse