import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

structure AdmissibleClass where
  object : FSpacesAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FSpacesWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse