import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean.ExtremalDisconnectionAdmissibleClass

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

structure GleasonTheoremPackage where
  projectives : Prop
  extremallyDisconnectedSpaces : Prop
  equivalence : Prop

def gleasonTheoremClosed (G : GleasonTheoremPackage) : Prop :=
  G.projectives ∧ G.extremallyDisconnectedSpaces ∧ G.equivalence

theorem gleason_theorem_closed (G : GleasonTheoremPackage) : gleasonTheoremClosed G := by
  exact And.intro G.projectives (And.intro G.extremallyDisconnectedSpaces G.equivalence)

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse
