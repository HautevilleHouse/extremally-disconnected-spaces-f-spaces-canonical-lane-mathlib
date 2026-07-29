import canonicalLaneMathlib.AdmissibleClass
import ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean.ExtremallyDisconnected

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

def ConstrainedFSpacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_f_spaces_endgame (A : AdmissibleClass) : ConstrainedFSpacesClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse