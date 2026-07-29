import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ColorLieSuperAlgebrasCanonicalLaneLean.GradedAlgebraStructure

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure ColorLieSuperalgebraRepresentation where
  lieSuperalgebra : ColorLieSuperAlgebra
  representationSpace : Type u
  [instAddCommGroup : AddCommGroup representationSpace]
  [instModule : Module lieSuperalgebra.baseField representationSpace]
  action : lieSuperalgebra.vectorSpace → representationSpace → representationSpace
  actionBilinearity : Prop
  actionSuperLieBracketCompatibility : Prop
  gradingRespecting : Prop
  actionBilinearityTerm : actionBilinearity
  actionSuperLieBracketCompatibilityTerm : actionSuperLieBracketCompatibility
  gradingRespectingTerm : gradingRespecting

structure ColorLieSuperalgebraRepresentationEvidence (R : ColorLieSuperalgebraRepresentation) where
  actionBilinearityClosed : R.actionBilinearity
  actionSuperLieBracketCompatibilityClosed : R.actionSuperLieBracketCompatibility
  gradingRespectingClosed : R.gradingRespecting

def ColorLieSuperalgebraRepresentationClosed (R : ColorLieSuperalgebraRepresentation) : Prop :=
  R.actionBilinearity ∧ R.actionSuperLieBracketCompatibility ∧ R.gradingRespecting

theorem color_lie_superalgebra_representation_closed_from_evidence
    (R : ColorLieSuperalgebraRepresentation) (E : ColorLieSuperalgebraRepresentationEvidence R) :
    ColorLieSuperalgebraRepresentationClosed R := by
  exact And.intro E.actionBilinearityClosed
    (And.intro E.actionSuperLieBracketCompatibilityClosed E.gradingRespectingClosed)

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse