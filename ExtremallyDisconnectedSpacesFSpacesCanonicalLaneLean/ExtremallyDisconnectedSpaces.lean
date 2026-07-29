import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

structure ExtremallyDisconnectedSpace (X : Type u) [TopologicalSpace X] : Prop where
  extremallyDisconnected : IsExtremallyDisconnected X
  closureOfOpenIsOpen : ∀ U : Set X, IsOpen U → IsOpen (closure U)

structure FSpace (X : Type u) [TopologicalSpace X] : Prop where
  completelyRegular : Tychonoff X
  pseudocompact : Pseudocompact X
  realcompact : Realcompact X

def IsExtremallyDisconnected (X : Type u) [TopologicalSpace X] : Prop :=
  ∀ U : Set X, IsOpen U → IsOpen (closure U)

def Pseudocompact (X : Type u) [TopologicalSpace X] : Prop :=
  ∀ f : C(X, ℝ), Bounded f

def Realcompact (X : Type u) [TopologicalSpace X] : Prop :=
  ∀ f : C(X, ℝ), ∃ (x : X), f x = 0 ∨ IsMaximal (f x)

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse