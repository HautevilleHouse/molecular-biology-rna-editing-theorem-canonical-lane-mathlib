import MolecularBiologyRnaEditingTheoremCanonicalLaneLean.AdmissibleClass

/-! Targeting and ADAR enzyme binding -/

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

structure RnaEditingTargetingPackage where
  doubleStrandedRna : Prop
  adarBinding : Prop
  adenineDeamination : Prop
  specificityDeterminants : Prop
  editingEfficiency : Prop

structure RnaEditingTargetingEvidence (P : RnaEditingTargetingPackage) where
  doubleStrandedRnaClosed : P.doubleStrandedRna
  adarBindingClosed : P.adarBinding
  adenineDeaminationClosed : P.adenineDeamination
  specificityDeterminantsClosed : P.specificityDeterminants
  editingEfficiencyClosed : P.editingEfficiency

def RnaEditingTargetingClosed (P : RnaEditingTargetingPackage) : Prop :=
  P.doubleStrandedRna ∧ P.adarBinding ∧ P.adenineDeamination ∧ P.specificityDeterminants ∧ P.editingEfficiency

theorem rna_editing_targeting_closed_from_evidence (P : RnaEditingTargetingPackage) (E : RnaEditingTargetingEvidence P) : RnaEditingTargetingClosed P := by
  exact And.intro E.doubleStrandedRnaClosed (And.intro E.adarBindingClosed (And.intro E.adenineDeaminationClosed (And.intro E.specificityDeterminantsClosed E.editingEfficiencyClosed)))

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse