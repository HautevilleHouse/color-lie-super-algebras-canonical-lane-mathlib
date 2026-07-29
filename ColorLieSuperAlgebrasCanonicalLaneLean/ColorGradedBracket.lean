import ColorLieSuperAlgebrasCanonicalLaneLean.ColorGradedAdmissibleClass

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure ColorGradedBracketPackage (C : ColorGradedSpace) where
  bracket : ∀ g₁ g₂ : C.gradingGroup, C.grading g₁ → C.grading g₂ → C.grading (g₁*g₂)
  colorSuperSymmetry : Prop
  bilinearity : Prop
  colorJacobiIdentity : Prop

structure ColorGradedBracketEvidence {C : ColorGradedSpace}
  (B : ColorGradedBracketPackage C) where
  colorSuperSymmetryClosed : B.colorSuperSymmetry
  bilinearityClosed : B.bilinearity
  colorJacobiIdentityClosed : B.colorJacobiIdentity

def ColorGradedBracketClosed {C : ColorGradedSpace}
  (B : ColorGradedBracketPackage C) : Prop :=
  B.colorSuperSymmetry ∧ B.bilinearity ∧ B.colorJacobiIdentity

theorem color_graded_bracket_closed_from_evidence
  {C : ColorGradedSpace} (B : ColorGradedBracketPackage C)
  (E : ColorGradedBracketEvidence B) : ColorGradedBracketClosed B := by
  exact And.intro E.colorSuperSymmetryClosed
    (And.intro E.bilinearityClosed E.colorJacobiIdentityClosed)

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse