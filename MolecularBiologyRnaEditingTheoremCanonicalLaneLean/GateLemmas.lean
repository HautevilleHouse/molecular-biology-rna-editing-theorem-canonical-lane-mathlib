import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRnaEditingTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse