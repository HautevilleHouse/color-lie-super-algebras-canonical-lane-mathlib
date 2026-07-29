import ColorLieSuperAlgebrasCanonicalLaneLean.ColorGradedBracket

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure ColorSuperRepresentationPackage {C : ColorGradedSpace}
  (B : ColorGradedBracketPackage C) where
  repSpace : ColorGradedSpace
  repMap : ∀ g : C.gradingGroup, C.grading g → (repSpace.carrier → repSpace.carrier)
  colorEquivariance : Prop
  bracketPreserving : Prop

structure ColorSuperRepresentationEvidence {C : ColorGradedSpace}
  {B : ColorGradedBracketPackage C}
  (R : ColorSuperRepresentationPackage B) where
  colorEquivarianceClosed : R.colorEquivariance
  bracketPreservingClosed : R.bracketPreserving

def ColorSuperRepresentationClosed {C : ColorGradedSpace}
  {B : ColorGradedBracketPackage C}
  (R : ColorSuperRepresentationPackage B) : Prop :=
  R.colorEquivariance ∧ R.bracketPreserving

theorem color_super_representation_closed_from_evidence
  {C : ColorGradedSpace} {B : ColorGradedBracketPackage C}
  (R : ColorSuperRepresentationPackage B)
  (E : ColorSuperRepresentationEvidence R) : ColorSuperRepresentationClosed R := by
  exact And.intro E.colorEquivarianceClosed E.bracketPreservingClosed

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse