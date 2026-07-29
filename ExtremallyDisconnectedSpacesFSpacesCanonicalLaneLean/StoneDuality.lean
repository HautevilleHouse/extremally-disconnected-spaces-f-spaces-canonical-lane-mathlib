import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

structure StoneSpacePackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  totallyDisconnected : Prop
  compact : Prop
  hausdorff : Prop

structure StoneSpaceEvidence (S : StoneSpacePackage) where
  totallyDisconnectedClosed : S.totallyDisconnected
  compactClosed : S.compact
  hausdorffClosed : S.hausdorff

def StoneSpaceClosed (S : StoneSpacePackage) : Prop :=
  S.totallyDisconnected ∧ S.compact ∧ S.hausdorff

theorem stone_space_closed_from_evidence (S : StoneSpacePackage) (E : StoneSpaceEvidence S) :
    StoneSpaceClosed S := by
  exact And.intro E.totallyDisconnectedClosed (And.intro E.compactClosed E.hausdorffClosed)

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse