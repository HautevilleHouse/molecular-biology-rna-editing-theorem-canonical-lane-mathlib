import MolecularBiologyRnaEditingTheoremCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib.Core
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MolecularBiologyRnaEditingTheoremCanonicalLaneLean

open HautevilleHouse.canonicalLaneMathlib.Core

structure RnaSequence where
  sequence : String
  length : Nat
  modified : Set ℕ

structure RnaEditingAdmittedObject where
  rna : RnaSequence
  editingEnzymeActive : Prop
  targetSiteRecognized : Prop
  editingComplete : Prop
  conclusion : editingComplete

structure RnaEditingEndgameState where
  object : RnaEditingAdmittedObject

def RnaEditingWitnessClosed (O : RnaEditingAdmittedObject) : Prop :=
  O.editingComplete

end MolecularBiologyRnaEditingTheoremCanonicalLaneLean
end HautevilleHouse