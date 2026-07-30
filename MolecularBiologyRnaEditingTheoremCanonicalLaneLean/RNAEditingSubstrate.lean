import HautevilleHouse.MolecularBiologyRnaEditingTheoremCanonicalLaneLean.RNABridgeLemmas

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

structure RNASequence where
  bases : List Char
  length : ℕ
  fivePrimeEnd : ℕ
  threePrimeEnd : ℕ

structure RNAEditingSubstratePackage where
  transcript : RNASequence
  dsRNAStructures : Prop
  enzymeRecognitionSites : Prop
  accessibleAdenosines : List ℕ
  deaminationPropensity : Prop

structure RNAEditingSubstrateEvidence (S : RNAEditingSubstratePackage) where
  dsRNAStructuresClosed : S.dsRNAStructures
  enzymeRecognitionSitesClosed : S.enzymeRecognitionSites
  deaminationPropensityClosed : S.deaminationPropensity

def RNAEditingSubstrateClosed (S : RNAEditingSubstratePackage) : Prop :=
  S.dsRNAStructures ∧ S.enzymeRecognitionSites ∧ S.deaminationPropensity

theorem rna_editing_substrate_closed_from_evidence (S : RNAEditingSubstratePackage)
    (E : RNAEditingSubstrateEvidence S) : RNAEditingSubstrateClosed S := by
  exact And.intro E.dsRNAStructuresClosed (And.intro E.enzymeRecognitionSitesClosed E.deaminationPropensityClosed)

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse