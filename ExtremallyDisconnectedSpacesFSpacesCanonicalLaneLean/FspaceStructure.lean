import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

structure FSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  extremallyDisconnected : Prop
  fSpaceProperty : Prop
  stoneCechCompactification : Prop

structure FSpaceEvidence (F : FSpace) where
  extremallyDisconnectedClosed : F.extremallyDisconnected
  fSpacePropertyClosed : F.fSpaceProperty
  stoneCechCompactificationClosed : F.stoneCechCompactification

def FSpaceClosed (F : FSpace) : Prop :=
  F.extremallyDisconnected ∧ F.fSpaceProperty ∧ F.stoneCechCompactification

theorem f_space_closed_from_evidence (F : FSpace) (Ev : FSpaceEvidence F) :
    FSpaceClosed F := by
  exact And.intro Ev.extremallyDisconnectedClosed
    (And.intro Ev.fSpacePropertyClosed Ev.stoneCechCompactificationClosed)

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse
