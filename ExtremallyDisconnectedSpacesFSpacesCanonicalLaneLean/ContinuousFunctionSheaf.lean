import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean.ExtremalDisconnectionAdmissibleClass

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

structure ContinuousFunctionSheaf (X : ExtremallyDisconnectedSpace) where
  baseSpace : X.carrier
  sections : X.carrier → Type u
  sheafConditions : Prop
  fSpaceStructure : Prop

def continuousFunctionSheafClosed {X : ExtremallyDisconnectedSpace} (F : ContinuousFunctionSheaf X) : Prop :=
  F.sheafConditions ∧ F.fSpaceStructure

theorem continuous_function_sheaf_closed {X : ExtremallyDisconnectedSpace} (F : ContinuousFunctionSheaf X) :
    continuousFunctionSheafClosed F := by
  exact And.intro F.sheafConditions F.fSpaceStructure

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse
