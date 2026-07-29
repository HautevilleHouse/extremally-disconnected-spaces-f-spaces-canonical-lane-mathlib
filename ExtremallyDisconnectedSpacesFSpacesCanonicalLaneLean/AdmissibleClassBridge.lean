import canonicalLaneMathlib.AdmissibleClass
import ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean.ExtremallyDisconnectedSpaces
import ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean.FSpaceProperties

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

structure AdmissibleObject where
  space : Type u
  topology : TopologicalSpace space
  isExtremallyDisconnected : ExtremallyDisconnectedSpace space
  isFSpace : FSpace space
  stoneCech : StoneCechCompactification space
  gleason : gleason_theorem space (by infer_instance) (by infer_instance)

def bridgeClosed (A : AdmissibleObject) : Prop :=
  ExtremallyDisconnectedSpace A.space ∧ FSpace A.space

theorem bridge_from_admissible_object (A : AdmissibleObject) : bridgeClosed A :=
  And.intro A.isExtremallyDisconnected A.isFSpace

def gateClosed (A : AdmissibleObject) : Prop :=
  A.gleason

theorem gate_from_admissible_object (A : AdmissibleObject) : gateClosed A :=
  A.gleason

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse