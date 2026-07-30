import MolecularBiologyRnaEditingTheoremCanonicalLaneLean.RnaEditingTargeting

/-! Recoding and functional consequences -/

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

structure EditingRecodingPackage where
  codonChange : Prop
  proteinIsoformGeneration : Prop
  functionalImpact : Prop
  recodingFrequency : Prop
  tissueSpecificity : Prop

structure EditingRecodingEvidence (P : EditingRecodingPackage) where
  codonChangeClosed : P.codonChange
  proteinIsoformGenerationClosed : P.proteinIsoformGeneration
  functionalImpactClosed : P.functionalImpact
  recodingFrequencyClosed : P.recodingFrequency
  tissueSpecificityClosed : P.tissueSpecificity

def EditingRecodingClosed (P : EditingRecodingPackage) : Prop :=
  P.codonChange ∧ P.proteinIsoformGeneration ∧ P.functionalImpact ∧ P.recodingFrequency ∧ P.tissueSpecificity

theorem editing_recoding_closed_from_evidence (P : EditingRecodingPackage) (E : EditingRecodingEvidence P) : EditingRecodingClosed P := by
  exact And.intro E.codonChangeClosed (And.intro E.proteinIsoformGenerationClosed (And.intro E.functionalImpactClosed (And.intro E.recodingFrequencyClosed E.tissueSpecificityClosed)))

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse