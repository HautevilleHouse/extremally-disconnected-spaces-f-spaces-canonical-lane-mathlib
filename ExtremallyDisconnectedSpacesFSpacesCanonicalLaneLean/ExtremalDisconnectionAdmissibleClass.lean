import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

structure ExtremallyDisconnectedSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  extremallyDisconnected : Prop

structure FSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  stoneCechCompactification : Prop
  fSpaceProperty : Prop

structure AdmissibleObject where
  edSpace : ExtremallyDisconnectedSpace
  fSpace : FSpace
  compatibility : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : AdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse
