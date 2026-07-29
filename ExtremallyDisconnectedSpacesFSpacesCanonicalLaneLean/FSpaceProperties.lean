import canonicalLaneMathlib.AdmissibleClass
import ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean.ExtremallyDisconnectedSpaces

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

theorem extremally_disconnected_implies_F_space (X : Type u) [TopologicalSpace X] :
    ExtremallyDisconnectedSpace X → FSpace X := by
  intro h
  exact {
    completelyRegular := by
      -- Every extremally disconnected Tychonoff space is completely regular
      sorry
    pseudocompact := by
      -- Extremally disconnected pseudocompact spaces are realcompact
      sorry
    realcompact := by
      -- Pseudocompact extremally disconnected spaces are realcompact
      sorry
  }

theorem F_space_iff_extremally_disconnected (X : Type u) [TopologicalSpace X] [Tychonoff X] :
    FSpace X ↔ ExtremallyDisconnectedSpace X := by
  constructor
  · intro h
    -- F-spaces are extremally disconnected
    sorry
  · intro h
    exact extremally_disconnected_implies_F_space X h

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse