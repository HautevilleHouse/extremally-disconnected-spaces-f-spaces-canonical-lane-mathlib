import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

open Topology

structure FSpacePackage where
  carrier : Type u
  topology : TopologicalSpace carrier
  clopenBasis : Prop
  zeroDimensional : Prop
  hausdorff : Prop

structure FSpaceEvidence (F : FSpacePackage) where
  clopenBasisClosed : F.clopenBasis
  zeroDimensionalClosed : F.zeroDimensional
  hausdorffClosed : F.hausdorff

def FSpaceClosed (F : FSpacePackage) : Prop :=
  F.clopenBasis ∧ F.zeroDimensional ∧ F.hausdorff

theorem f_space_closed_from_evidence (F : FSpacePackage) (E : FSpaceEvidence F) :
    FSpaceClosed F := by
  exact And.intro E.clopenBasisClosed (And.intro E.zeroDimensionalClosed E.hausdorffClosed)

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse