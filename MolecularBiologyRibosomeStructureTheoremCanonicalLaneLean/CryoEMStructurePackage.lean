import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

structure CryoEMStructurePackage where
  densityMap : Type u
  atomicModel : Type v
  resolutionAngstrom : Float
  densityMapResolved : Prop
  atomicModelBuilt : Prop
  resolutionSufficient : Prop
  densityMapResolvedEvidence : densityMapResolved
  atomicModelBuiltEvidence : atomicModelBuilt
  resolutionSufficientEvidence : resolutionSufficient

structure CryoEMStructureEvidence (C : CryoEMStructurePackage) where
  densityMapResolvedClosed : C.densityMapResolved
  atomicModelBuiltClosed : C.atomicModelBuilt
  resolutionSufficientClosed : C.resolutionSufficient

def CryoEMStructureClosed (C : CryoEMStructurePackage) : Prop :=
  C.densityMapResolved ∧ C.atomicModelBuilt ∧ C.resolutionSufficient

theorem cryo_em_structure_closed_from_evidence
    (C : CryoEMStructurePackage) (E : CryoEMStructureEvidence C) :
    CryoEMStructureClosed C := by
  exact And.intro E.densityMapResolvedClosed
    (And.intro E.atomicModelBuiltClosed E.resolutionSufficientClosed)

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse