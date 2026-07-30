import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

structure EditaseKineticsPackage where
  catalyticRateConstant : Prop
  substrateBindingAffinity : Prop
  productReleaseRate : Prop
  allostericModulation : Prop
  inhibitionMechanism : Prop

structure KineticEvidence (K : EditaseKineticsPackage) where
  catalyticRateConstantClosed : K.catalyticRateConstant
  substrateBindingAffinityClosed : K.substrateBindingAffinity
  productReleaseRateClosed : K.productReleaseRate
  allostericModulationClosed : K.allostericModulation
  inhibitionMechanismClosed : K.inhibitionMechanism

def EditaseKineticsClosed (K : EditaseKineticsPackage) : Prop :=
  K.catalyticRateConstant ∧ K.substrateBindingAffinity ∧
  K.productReleaseRate ∧ K.allostericModulation ∧ K.inhibitionMechanism

theorem editase_kinetics_closed_from_evidence (K : EditaseKineticsPackage) (E : KineticEvidence K) : EditaseKineticsClosed K := by
  exact And.intro E.catalyticRateConstantClosed
    (And.intro E.substrateBindingAffinityClosed
      (And.intro E.productReleaseRateClosed
        (And.intro E.allostericModulationClosed E.inhibitionMechanismClosed)))

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse