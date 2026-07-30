import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean

structure PeptideBondFormationSite where
  peptidylTransferaseCenter : Prop
  aSite : Prop
  pSite : Prop
  eSite : Prop
  mrnaChannel : Prop
  peptidylTransferaseCenterTerm : peptidylTransferaseCenter
  aSiteTerm : aSite
  pSiteTerm : pSite
  eSiteTerm : eSite
  mrnaChannelTerm : mrnaChannel

structure PeptideBondFormationEvidence (P : PeptideBondFormationSite) where
  peptidylTransferaseCenterClosed : P.peptidylTransferaseCenter
  aSiteClosed : P.aSite
  pSiteClosed : P.pSite
  eSiteClosed : P.eSite
  mrnaChannelClosed : P.mrnaChannel

def PeptideBondFormationClosed (P : PeptideBondFormationSite) : Prop :=
  P.peptidylTransferaseCenter ∧ P.aSite ∧ P.pSite ∧ P.eSite ∧ P.mrnaChannel

theorem peptide_bond_formation_closed_from_evidence (P : PeptideBondFormationSite)
    (E : PeptideBondFormationEvidence P) : PeptideBondFormationClosed P := by
  exact And.intro E.peptidylTransferaseCenterClosed (
    And.intro E.aSiteClosed (
      And.intro E.pSiteClosed (
        And.intro E.eSiteClosed E.mrnaChannelClosed)))

structure DecodingCenter where
  decodingSite : Prop
  mrnaTrnaInteraction : Prop
  codonAnticodonPairing : Prop
  decodingSiteTerm : decodingSite
  mrnaTrnaInteractionTerm : mrnaTrnaInteraction
  codonAnticodonPairingTerm : codonAnticodonPairing

structure DecodingCenterEvidence (D : DecodingCenter) where
  decodingSiteClosed : D.decodingSite
  mrnaTrnaInteractionClosed : D.mrnaTrnaInteraction
  codonAnticodonPairingClosed : D.codonAnticodonPairing

def DecodingCenterClosed (D : DecodingCenter) : Prop :=
  D.decodingSite ∧ D.mrnaTrnaInteraction ∧ D.codonAnticodonPairing

theorem decoding_center_closed_from_evidence (D : DecodingCenter)
    (E : DecodingCenterEvidence D) : DecodingCenterClosed D := by
  exact And.intro E.decodingSiteClosed (
    And.intro E.mrnaTrnaInteractionClosed E.codonAnticodonPairingClosed)

end MolecularBiologyRibosomeStructureTheoremCanonicalLaneLean
end HautevilleHouse
