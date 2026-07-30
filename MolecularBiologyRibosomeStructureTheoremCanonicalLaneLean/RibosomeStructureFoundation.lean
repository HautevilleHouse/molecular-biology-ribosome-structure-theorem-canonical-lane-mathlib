import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

structure RibosomeStructureFoundation where
  ribosomalSubunits : Type u
  mRNAChannel : Type v
  tRNABindingSites : Type w
  peptidylTransferaseCenter : Prop
  decodingCenter : Prop
  exitTunnel : Prop
  peptidylTransferaseCenterEvidence : peptidylTransferaseCenter
  decodingCenterEvidence : decodingCenter
  exitTunnelEvidence : exitTunnel

structure RibosomeStructureEvidence (R : RibosomeStructureFoundation) where
  peptidylTransferaseCenterClosed : R.peptidylTransferaseCenter
  decodingCenterClosed : R.decodingCenter
  exitTunnelClosed : R.exitTunnel

def RibosomeStructureClosed (R : RibosomeStructureFoundation) : Prop :=
  R.peptidylTransferaseCenter ∧ R.decodingCenter ∧ R.exitTunnel

theorem ribosome_structure_closed_from_evidence
    (R : RibosomeStructureFoundation) (E : RibosomeStructureEvidence R) :
    RibosomeStructureClosed R := by
  exact And.intro E.peptidylTransferaseCenterClosed
    (And.intro E.decodingCenterClosed E.exitTunnelClosed)

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse