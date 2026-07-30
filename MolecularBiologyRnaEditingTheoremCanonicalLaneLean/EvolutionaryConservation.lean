import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

structure SequenceConservationPackage where
  conservedEditingSites : Prop
  phylogeneticDistribution : Prop
  selectivePressure : Prop
  coevolutionWithEditase : Prop
  functionalOrthology : Prop

structure ConservationEvidence (C : SequenceConservationPackage) where
  conservedEditingSitesClosed : C.conservedEditingSites
  phylogeneticDistributionClosed : C.phylogeneticDistribution
  selectivePressureClosed : C.selectivePressure
  coevolutionWithEditaseClosed : C.coevolutionWithEditase
  functionalOrthologyClosed : C.functionalOrthology

def SequenceConservationClosed (C : SequenceConservationPackage) : Prop :=
  C.conservedEditingSites ∧ C.phylogeneticDistribution ∧
  C.selectivePressure ∧ C.coevolutionWithEditase ∧ C.functionalOrthology

theorem sequence_conservation_closed_from_evidence (C : SequenceConservationPackage) (E : ConservationEvidence C) : SequenceConservationClosed C := by
  exact And.intro E.conservedEditingSitesClosed
    (And.intro E.phylogeneticDistributionClosed
      (And.intro E.selectivePressureClosed
        (And.intro E.coevolutionWithEditaseClosed E.functionalOrthologyClosed)))

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse