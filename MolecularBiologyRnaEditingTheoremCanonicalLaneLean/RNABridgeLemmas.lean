import HautevilleHouse.MolecularBiologyRnaEditingTheoremCanonicalLaneLean.RNAAdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  RNAWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse