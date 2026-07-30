import MolecularBiologyRnaEditingTheoremCanonicalLaneLean.EditingEnzymeKinetics

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

structure RnaEditingDiseaseAssociationPackage {P : RnaEditingSitePackage}
    {K : EditingEnzymeKineticsPackage P} where
  diseaseName : String
  editingDysregulation : Prop
  pathologicalMutation : Prop
  therapeuticTarget : Prop
  editingDysregulationClosed : editingDysregulation
  pathologicalMutationClosed : pathologicalMutation
  therapeuticTargetClosed : therapeuticTarget

structure RnaEditingDiseaseAssociationEvidence {P : RnaEditingSitePackage}
    {K : EditingEnzymeKineticsPackage P}
    (D : RnaEditingDiseaseAssociationPackage P K) where
  editingDysregulationClosed : D.editingDysregulation
  pathologicalMutationClosed : D.pathologicalMutation
  therapeuticTargetClosed : D.therapeuticTarget

def RnaEditingDiseaseAssociationClosed {P : RnaEditingSitePackage}
    {K : EditingEnzymeKineticsPackage P}
    (D : RnaEditingDiseaseAssociationPackage P K) : Prop :=
  D.editingDysregulation ∧ D.pathologicalMutation ∧ D.therapeuticTarget

theorem rna_editing_disease_association_closed_from_evidence {P : RnaEditingSitePackage}
    {K : EditingEnzymeKineticsPackage P}
    (D : RnaEditingDiseaseAssociationPackage P K)
    (E : RnaEditingDiseaseAssociationEvidence D) :
    RnaEditingDiseaseAssociationClosed D :=
  And.intro E.editingDysregulationClosed
    (And.intro E.pathologicalMutationClosed E.therapeuticTargetClosed)

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse