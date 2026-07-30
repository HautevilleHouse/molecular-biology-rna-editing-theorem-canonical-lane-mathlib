import MolecularBiologyRnaEditingTheoremCanonicalLaneLean.RnaEditingAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

structure EditingSiteRecognitionPackage where
  siteSequence : String
  recognitionMotif : Prop
  secondaryStructureAccessibility : Prop
  siteConservation : Prop

structure EditingSiteRecognitionEvidence (P : EditingSiteRecognitionPackage) where
  recognitionMotifClosed : P.recognitionMotif
  secondaryStructureAccessibilityClosed : P.secondaryStructureAccessibility
  siteConservationClosed : P.siteConservation

def EditingSiteRecognitionClosed (P : EditingSiteRecognitionPackage) : Prop :=
  P.recognitionMotif ∧ P.secondaryStructureAccessibility ∧ P.siteConservation

theorem editing_site_recognition_closed_from_evidence (P : EditingSiteRecognitionPackage)
    (E : EditingSiteRecognitionEvidence P) : EditingSiteRecognitionClosed P := by
  exact And.intro E.recognitionMotifClosed
    (And.intro E.secondaryStructureAccessibilityClosed E.siteConservationClosed)

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse