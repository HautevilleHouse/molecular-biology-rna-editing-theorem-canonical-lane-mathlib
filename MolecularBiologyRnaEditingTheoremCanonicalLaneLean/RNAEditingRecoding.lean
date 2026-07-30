import HautevilleHouse.MolecularBiologyRnaEditingTheoremCanonicalLaneLean.RNAEditingCatalysis

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

structure CodonChange where
  originalCodon : String
  editedCodon : String
  aminoAcidChange : String
  recodingOutcome : Prop

structure RNAEditingRecodingPackage {S : RNAEditingSubstratePackage}
    (C : RNAEditingCatalysisPackage S) where
  recodingEvents : List CodonChange
  recodingEfficiency : Prop
  recodingSpecificity : Prop
  recodingFidelity : Prop

structure RNAEditingRecodingEvidence {S : RNAEditingSubstratePackage}
    {C : RNAEditingCatalysisPackage S} (R : RNAEditingRecodingPackage C) where
  recodingEfficiencyClosed : R.recodingEfficiency
  recodingSpecificityClosed : R.recodingSpecificity
  recodingFidelityClosed : R.recodingFidelity

def RNAEditingRecodingClosed {S : RNAEditingSubstratePackage}
    {C : RNAEditingCatalysisPackage S} (R : RNAEditingRecodingPackage C) : Prop :=
  R.recodingEfficiency ∧ R.recodingSpecificity ∧ R.recodingFidelity

theorem rna_editing_recoding_closed_from_evidence {S : RNAEditingSubstratePackage}
    {C : RNAEditingCatalysisPackage S} (R : RNAEditingRecodingPackage C)
    (E : RNAEditingRecodingEvidence R) : RNAEditingRecodingClosed R := by
  exact And.intro E.recodingEfficiencyClosed (And.intro E.recodingSpecificityClosed E.recodingFidelityClosed)

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse