import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FSpacesWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse