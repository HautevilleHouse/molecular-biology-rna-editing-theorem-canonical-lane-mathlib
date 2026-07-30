import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

structure RnaEditingAdmittedObject where
  transcript : Type
  sequence : transcript → List (Char)
  doubleStrandedRegions : Prop
  aToIEditingDetected : Prop
  conclusion : aToIEditingDetected

structure AdmissibleClass where
  object : RnaEditingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  RnaEditingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse