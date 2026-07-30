import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

structure RnaEditingAdmittedObject where
  transcriptSequence : String
  editingSitePositions : List Nat
  editingFrequency : Float
  bindingProteins : List String
  functionalEffect : Prop
  conclusion : functionalEffect

structure AdmissibleClass where
  object : RnaEditingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.functionalEffect) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse