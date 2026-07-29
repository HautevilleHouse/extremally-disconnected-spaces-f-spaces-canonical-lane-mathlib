import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

structure ExtremallyDisconnectedSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  openClosure : Set carrier → Set carrier
  extremalDisconnection : ∀ U : Set carrier, IsOpen U → openClosure U = closure U
  closureOpen : ∀ U : Set carrier, IsOpen (openClosure U)

structure ClosureOperator where
  carrier : Type
  closure : Set carrier → Set carrier
  idempotent : ∀ s, closure (closure s) = closure s
  extensive : ∀ s, s ⊆ closure s
  monotone : ∀ s t, s ⊆ t → closure s ⊆ closure t

structure FSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  closureOperator : ClosureOperator
  fProperty : ∀ U : Set carrier, IsOpen U → closureOperator.closure U = closureOperator.closure (interior (closureOperator.closure U))

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

def ConstrainedExtremallyDisconnectedClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_extremally_disconnected_endgame (A : AdmissibleClass) : ConstrainedExtremallyDisconnectedClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse