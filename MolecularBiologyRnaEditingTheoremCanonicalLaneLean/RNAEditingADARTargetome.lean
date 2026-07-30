import HautevilleHouse.MolecularBiologyRnaEditingTheoremCanonicalLaneLean.RNAEditingRecoding

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

structure ADARTarget where
  transcriptID : String
  editingSite : ℕ
  recodingEffect : CodonChange

structue RNAEditingTargetomePackage {S : RNAEditingSubstratePackage}
    {C : RNAEditingCatalysisPackage S} {R : RNAEditingRecodingPackage C} where
  targetome : List ADARTarget
  targetCoverage : Prop
  targetSpecificity : Prop
  targetRegulation : Prop

structure RNAEditingTargetomeEvidence {S : RNAEditingSubstratePackage}
    {C : RNAEditingCatalysisPackage S} {R : RNAEditingRecodingPackage C}
    (T : RNAEditingTargetomePackage R) where
  targetCoverageClosed : T.targetCoverage
  targetSpecificityClosed : T.targetSpecificity
  targetRegulationClosed : T.targetRegulation

def RNAEditingTargetomeClosed {S : RNAEditingSubstratePackage}
    {C : RNAEditingCatalysisPackage S} {R : RNAEditingRecodingPackage C}
    (T : RNAEditingTargetomePackage R) : Prop :=
  T.targetCoverage ∧ T.targetSpecificity ∧ T.targetRegulation

theorem rna_editing_targetome_closed_from_evidence {S : RNAEditingSubstratePackage}
    {C : RNAEditingCatalysisPackage S} {R : RNAEditingRecodingPackage C}
    (T : RNAEditingTargetomePackage R) (E : RNAEditingTargetomeEvidence T) :
    RNAEditingTargetomeClosed T := by
  exact And.intro E.targetCoverageClosed (And.intro E.targetSpecificityClosed E.targetRegulationClosed)

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse