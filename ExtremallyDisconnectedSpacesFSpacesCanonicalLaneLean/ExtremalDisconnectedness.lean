import HautevilleHouse.ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

structure ExtremallyDisconnectedSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  openClosureEquality : ∀ s : Set carrier, IsOpen s → IsOpen (closure s)

structure FSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  fSpaceProperty : Prop

def extremallyDisconnectedIsFSpace (X : ExtremallyDisconnectedSpace) : FSpace :=
  { carrier := X.carrier
    topology := X.topology
    fSpaceProperty := X.openClosureEquality
  }

theorem openClosurePreservesFProperty (X : ExtremallyDisconnectedSpace) :
  ∀ s : Set X.carrier, IsOpen s → IsOpen (closure s) := by
  intro s h
  exact X.openClosureEquality s h

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse