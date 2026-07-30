import HautevilleHouse.MolecularBiologyRnaEditingTheoremCanonicalLaneLean.RNAEditingSubstrate

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

structure ADAREnzyme where
  catalyticDomain : Type
  dsRBDs : ℕ
  zincCoordination : Prop
  deaminaseActivity : Prop

structure RNAEditingCatalysisPackage (S : RNAEditingSubstratePackage) where
  enzyme : ADAREnzyme
  bindingAffinity : Prop
  catalyticRate : Prop
  editingFidelity : Prop
  productFormation : Prop

structue RNAEditingCatalysisEvidence {S : RNAEditingSubstratePackage}
    (C : RNAEditingCatalysisPackage S) where
  bindingAffinityClosed : C.bindingAffinity
  catalyticRateClosed : C.catalyticRate
  editingFidelityClosed : C.editingFidelity
  productFormationClosed : C.productFormation

def RNAEditingCatalysisClosed {S : RNAEditingSubstratePackage}
    (C : RNAEditingCatalysisPackage S) : Prop :=
  C.bindingAffinity ∧ C.catalyticRate ∧ C.editingFidelity ∧ C.productFormation

theorem rna_editing_catalysis_closed_from_evidence {S : RNAEditingSubstratePackage}
    (C : RNAEditingCatalysisPackage S) (E : RNAEditingCatalysisEvidence C) :
    RNAEditingCatalysisClosed C := by
  exact And.intro E.bindingAffinityClosed (And.intro E.catalyticRateClosed
    (And.intro E.editingFidelityClosed E.productFormationClosed))

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse