import MolecularBiologyRnaEditingTheoremCanonicalLaneLean.RnaEditingSites

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

structure EditingEnzymeKineticsPackage {P : RnaEditingSitePackage} where
  enzymeName : String
  catalyticRate : Float
  bindingAffinity : Float
  cooperativity : Prop
  inhibitionMechanism : Prop
  kineticModel : Prop
  kineticModelClosed : kineticModel
  cooperativityClosed : cooperativity
  inhibitionMechanismClosed : inhibitionMechanism

structure EditingEnzymeKineticsEvidence {P : RnaEditingSitePackage}
    (K : EditingEnzymeKineticsPackage P) where
  kineticModelClosed : K.kineticModel
  cooperativityClosed : K.cooperativity
  inhibitionMechanismClosed : K.inhibitionMechanism

def EditingEnzymeKineticsClosed {P : RnaEditingSitePackage}
    (K : EditingEnzymeKineticsPackage P) : Prop :=
  K.kineticModel ∧ K.cooperativity ∧ K.inhibitionMechanism

theorem editing_enzyme_kinetics_closed_from_evidence {P : RnaEditingSitePackage}
    (K : EditingEnzymeKineticsPackage P) (E : EditingEnzymeKineticsEvidence K) :
    EditingEnzymeKineticsClosed K :=
  And.intro E.kineticModelClosed (And.intro E.cooperativityClosed E.inhibitionMechanismClosed)

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse