import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

structure RecodingConsequencesPackage where
  codonChange : Prop
  proteinIsoformGenerated : Prop
  functionalAlteration : Prop
  phenotypicOutcome : Prop
  evolutionaryConservation : Prop

structure RecodingEvidence (R : RecodingConsequencesPackage) where
  codonChangeClosed : R.codonChange
  proteinIsoformGeneratedClosed : R.proteinIsoformGenerated
  functionalAlterationClosed : R.functionalAlteration
  phenotypicOutcomeClosed : R.phenotypicOutcome
  evolutionaryConservationClosed : R.evolutionaryConservation

def RecodingConsequencesClosed (R : RecodingConsequencesPackage) : Prop :=
  R.codonChange ∧ R.proteinIsoformGenerated ∧
  R.functionalAlteration ∧ R.phenotypicOutcome ∧ R.evolutionaryConservation

theorem recoding_consequences_closed_from_evidence (R : RecodingConsequencesPackage) (E : RecodingEvidence R) : RecodingConsequencesClosed R := by
  exact And.intro E.codonChangeClosed
    (And.intro E.proteinIsoformGeneratedClosed
      (And.intro E.functionalAlterationClosed
        (And.intro E.phenotypicOutcomeClosed E.evolutionaryConservationClosed)))

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse