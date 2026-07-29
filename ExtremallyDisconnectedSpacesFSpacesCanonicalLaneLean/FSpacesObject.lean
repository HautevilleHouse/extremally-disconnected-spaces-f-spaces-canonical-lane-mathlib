import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

structure FSpacesAdmittedObject where
  space : Type u
  topology : TopologicalSpace space
  fProperty : Prop
  conclusion : fProperty

structure FSpacesEndgameState where
  object : FSpacesAdmittedObject

def FSpacesWitnessClosed (O : FSpacesAdmittedObject) : Prop :=
  O.fProperty

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse