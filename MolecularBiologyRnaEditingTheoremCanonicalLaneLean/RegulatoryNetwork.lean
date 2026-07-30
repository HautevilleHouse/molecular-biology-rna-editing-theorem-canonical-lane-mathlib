import MolecularBiologyRnaEditingTheoremCanonicalLaneLean.RnaEditingDiseaseAssociation

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

structure RegulatoryNetworkPackage {P : RnaEditingSitePackage}
    {K : EditingEnzymeKineticsPackage P}
    {D : RnaEditingDiseaseAssociationPackage P K} where
  transcriptionFactors : List String
  rnaBindingProteins : List String
  epigeneticModulators : List String
  feedbackLoops : Prop
  networkRobustness : Prop
  feedbackLoopsClosed : feedbackLoops
  networkRobustnessClosed : networkRobustness

structure RegulatoryNetworkEvidence {P : RnaEditingSitePackage}
    {K : EditingEnzymeKineticsPackage P}
    {D : RnaEditingDiseaseAssociationPackage P K}
    (N : RegulatoryNetworkPackage P K D) where
  feedbackLoopsClosed : N.feedbackLoops
  networkRobustnessClosed : N.networkRobustness

def RegulatoryNetworkClosed {P : RnaEditingSitePackage}
    {K : EditingEnzymeKineticsPackage P}
    {D : RnaEditingDiseaseAssociationPackage P K}
    (N : RegulatoryNetworkPackage P K D) : Prop :=
  N.feedbackLoops ∧ N.networkRobustness

theorem regulatory_network_closed_from_evidence {P : RnaEditingSitePackage}
    {K : EditingEnzymeKineticsPackage P}
    {D : RnaEditingDiseaseAssociationPackage P K}
    (N : RegulatoryNetworkPackage P K D)
    (E : RegulatoryNetworkEvidence N) : RegulatoryNetworkClosed N :=
  And.intro E.feedbackLoopsClosed E.networkRobustnessClosed

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse