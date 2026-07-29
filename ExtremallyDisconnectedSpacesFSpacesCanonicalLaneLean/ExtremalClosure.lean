import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

structure ExtremalDisconnectednessPackage where
  disconnectednessWitness : Prop
  fSpaceStructure : Prop
  bridgeAdmissible : Prop

structure ExtremalDisconnectednessEvidence (E : ExtremalDisconnectednessPackage) where
  disconnectednessWitnessClosed : E.disconnectednessWitness
  fSpaceStructureClosed : E.fSpaceStructure
  bridgeAdmissibleClosed : E.bridgeAdmissible

def ExtremalDisconnectednessClosed (E : ExtremalDisconnectednessPackage) : Prop :=
  E.disconnectednessWitness ∧ E.fSpaceStructure ∧ E.bridgeAdmissible

theorem extremal_disconnectedness_closed_from_evidence
    (E : ExtremalDisconnectednessPackage) (Ev : ExtremalDisconnectednessEvidence E) :
    ExtremalDisconnectednessClosed E := by
  exact And.intro Ev.disconnectednessWitnessClosed
    (And.intro Ev.fSpaceStructureClosed Ev.bridgeAdmissibleClosed)

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse
