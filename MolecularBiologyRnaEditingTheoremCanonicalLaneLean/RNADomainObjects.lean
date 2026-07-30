import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure RNASpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure RNAAdmittedObject where
  space : RNASpace
  editingComplete : Prop
  recodingFullyCharacterized : Prop
  targetomeResolved : Prop
  conclusion : editingComplete ∧ recodingFullyCharacterized ∧ targetomeResolved

structure RNAEndgameState where
  object : RNAAdmittedObject

def RNAWitnessClosed (O : RNAAdmittedObject) : Prop :=
  O.editingComplete ∧ O.recodingFullyCharacterized ∧ O.targetomeResolved

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse