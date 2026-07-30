import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean.RibosomeStructure
import MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean.RibosomeAssembly
import MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean.TranslationCycle

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

structure RibosomeStructureAdmissibleObject where
  ribosome : RibosomeComplex
  assembly : AssemblyFactors
  translation : TranslationCycle
  structureKnown : Prop
  assemblyKnown : Prop
  translationKnown : Prop
  structureKnownDef : structureKnown
  assemblyKnownDef : assemblyKnown
  translationKnownDef : translationKnown

definition RibosomeStructureAdmissibleClass (A : AdmissibleClass) : Prop :=
  ∃ (obj : RibosomeStructureAdmissibleObject), 
    A.endpointSatisfied = obj.structureKnown ∧
    A.remainderRecorded = (obj.assemblyKnown ∧ obj.translationKnown) ∧
    A.gateWitness = Or.inl A.endpointSatisfied

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse