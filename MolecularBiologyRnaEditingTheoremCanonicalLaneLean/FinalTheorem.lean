import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRnaEditingTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

def ConstrainedRnaEditingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_rna_editing_endgame (A : AdmissibleClass) :
    ConstrainedRnaEditingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse