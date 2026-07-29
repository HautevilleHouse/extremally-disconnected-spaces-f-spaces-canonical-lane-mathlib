import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean.ExtremalDisconnectionAdmissibleClass

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse
