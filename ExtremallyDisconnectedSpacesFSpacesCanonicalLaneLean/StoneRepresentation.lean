import HautevilleHouse.ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean.ExtremalDisconnectedness
open Set

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

structure BooleanAlgebra where
  carrier : Type u
  le : carrier → carrier → Prop
  sup : carrier → carrier → carrier
  inf : carrier → carrier → carrier
  compl : carrier → carrier
  bot : carrier
  top : carrier
  booleanAlgebraAxioms : Prop

structure StoneSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  booleanAlgebra : BooleanAlgebra
  stoneProperty : Prop

theorem extremallyDisconnectedStoneDuality (X : ExtremallyDisconnectedSpace) : StoneSpace := by
  sorry

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse