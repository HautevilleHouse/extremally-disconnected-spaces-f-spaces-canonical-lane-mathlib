import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean

structure StoneCechCompactificationPackage (X : Type u) [TopologicalSpace X] where
  compactification : Type u
  compactTopology : TopologicalSpace compactification
  embedding : X → compactification
  denseImage : DenseRange embedding
  universalProperty : ∀ (Y : Type u) [TopologicalSpace Y] [CompactSpace Y] [T2Space Y] (f : X → Y),
    Continuous f → ∃! g : compactification → Y, Continuous g ∧ g ∘ embedding = f

structure StoneCechCompactificationEvidence {X : Type u} [TopologicalSpace X]
    (C : StoneCechCompactificationPackage X) where
  denseImageClosed : C.denseImage
  universalPropertyClosed : C.universalProperty

def StoneCechCompactificationClosed {X : Type u} [TopologicalSpace X]
    (C : StoneCechCompactificationPackage X) : Prop :=
  C.denseImage ∧ C.universalProperty

theorem stone_cech_compactification_closed_from_evidence {X : Type u} [TopologicalSpace X]
    (C : StoneCechCompactificationPackage X) (E : StoneCechCompactificationEvidence C) :
    StoneCechCompactificationClosed C := by
  exact And.intro E.denseImageClosed E.universalPropertyClosed

end ExtremallyDisconnectedSpacesFSpacesCanonicalLaneLean
end HautevilleHouse