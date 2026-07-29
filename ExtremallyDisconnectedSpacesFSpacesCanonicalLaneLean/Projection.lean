import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

def fspaceProjection : Projection AdmissibleClass := {
  toFun := λ A => A
  idempotent := by intro A; rfl
}

theorem fspace_projection_idempotent (A : AdmissibleClass) :
    fspaceProjection.toFun (fspaceProjection.toFun A) = fspaceProjection.toFun A := by
  exact fspaceProjection.idempotent A

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse
