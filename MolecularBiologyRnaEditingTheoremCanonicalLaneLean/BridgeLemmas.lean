import canonicalLaneMathlib.AdmissibleClass
import MolecularBiologyRnaEditingTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RnaEditingWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse