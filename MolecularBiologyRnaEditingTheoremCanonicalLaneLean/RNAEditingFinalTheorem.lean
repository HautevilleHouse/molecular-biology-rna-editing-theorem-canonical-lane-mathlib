import HautevilleHouse.MolecularBiologyRnaEditingTheoremCanonicalLaneLean.RNAGateLemmas

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

def ConstrainedRNAEditingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_rna_editing_endgame (A : AdmissibleClass) :
    ConstrainedRNAEditingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse