import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

structure RNAEditingSite where
  nucleotideSequence : String
  editingPosition : Nat
  primaryStructure : Type u
  secondaryStructure : Type v
  tertiaryInteractions : Prop
  wobblePairingEvidence : Prop
  anticodonLoopRecognition : Prop

structure A_to_I_EditaseComplex where
  catalyticDomain : Type u
  dsRNA_BindingDomain : Type v
  bindingAffinity : Prop
  deaminationActivity : Prop
  targetSiteAccessibility : Prop
  editingEfficiency : Prop

structure RNASubstrateBinding where
  recognitionMotif : Prop
  structuralContext : Prop
  bindingModel : Type u
  siteSelectionRule : Prop

structure RNASecondaryStructureClosed (S : RNASubstrateBinding) : Prop := mk :: (
  recognitionMotifClosed : S.recognitionMotif
  structuralContextClosed : S.structuralContext
  siteSelectionRuleClosed : S.siteSelectionRule
)

theorem rna_secondary_structure_closed_from_binding (S : RNASubstrateBinding) : RNASecondaryStructureClosed S := by
  exact { recognitionMotifClosed := S.recognitionMotif, structuralContextClosed := S.structuralContext, siteSelectionRuleClosed := S.siteSelectionRule }

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse