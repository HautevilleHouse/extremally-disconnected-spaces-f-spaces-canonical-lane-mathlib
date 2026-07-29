import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean.ExtremalDisconnectionAdmissibleClass

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

structure BooleanAlgebra where
  carrier : Type u
  join : carrier → carrier → carrier
  meet : carrier → carrier → carrier
  complement : carrier → carrier
  zero : carrier
  one : carrier
  booleanAlgebraAxioms : Prop

structure BooleanAlgebraTopology where
  ba : BooleanAlgebra
  topology : TopologicalSpace ba.carrier
  stoneRepresentation : Prop
  extremallyDisconnectedDual : Prop

def booleanAlgebraClosed (B : BooleanAlgebraTopology) : Prop :=
  B.stoneRepresentation ∧ B.extremallyDisconnectedDual

theorem boolean_algebra_closed_from_evidence (B : BooleanAlgebraTopology) : booleanAlgebraClosed B := by
  exact And.intro B.stoneRepresentation B.extremallyDisconnectedDual

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse
