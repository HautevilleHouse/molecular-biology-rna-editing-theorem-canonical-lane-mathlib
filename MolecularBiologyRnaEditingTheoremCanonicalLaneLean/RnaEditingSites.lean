import MolecularBiologyRnaEditingTheoremCanonicalLaneLean.RnaEditingAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

structure RnaEditingSitePackage where
  geneName : String
  chromosomeLocation : String
  editingType : String
  recognitionSequence : String
  editingEnzymes : List String
  regulationRna : String
  siteFunction : Prop
  structureEvidence : Prop
  siteFunctionClosed : siteFunction
  structureEvidenceClosed : structureEvidence

structure RnaEditingSiteEvidence (P : RnaEditingSitePackage) where
  siteFunctionClosed : P.siteFunction
  structureEvidenceClosed : P.structureEvidence

def RnaEditingSiteClosed (P : RnaEditingSitePackage) : Prop :=
  P.siteFunction ∧ P.structureEvidence

theorem rna_editing_site_closed_from_evidence (P : RnaEditingSitePackage)
    (E : RnaEditingSiteEvidence P) : RnaEditingSiteClosed P :=
  And.intro E.siteFunctionClosed E.structureEvidenceClosed

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse