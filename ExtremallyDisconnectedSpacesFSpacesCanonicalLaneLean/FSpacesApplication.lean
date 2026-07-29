import canonicalLaneMathlib.AdmissibleClass
import ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean.ExtremallyDisconnected

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

structure FSpaceApplication where
  baseSpace : FSpace
  property : Prop
  propertyClosed : property

theorem f_space_application_closed (app : FSpaceApplication) : app.property :=
  app.propertyClosed

def FSpaceClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∧ A.remainderRecorded

theorem f_space_closed_from_admissible (A : AdmissibleClass) : FSpaceClosed A :=
  And.intro A.endpointSatisfied A.remainderRecorded

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse