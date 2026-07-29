import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure ColorLieSuperAlgebra where
  baseField : Type u
  vectorSpace : Type v
  [instAddCommGroup : AddCommGroup vectorSpace]
  [instModule : Module baseField vectorSpace]
  grading : ℤ × ℤ → Set vectorSpace
  bracket : vectorSpace → vectorSpace → vectorSpace
  colorFunction : ℤ × ℤ → ℤ × ℤ → ℤ × ℤ → ℤ
  bracketBilinearity : Prop
  bracketSuperAnticommutativity : Prop
  bracketSuperJacobiIdentity : Prop
  gradingConsistency : Prop
  colorCompatibility : Prop
  gradingConsistencyTerm : gradingConsistency
  colorCompatibilityTerm : colorCompatibility
  bracketBilinearityTerm : bracketBilinearity
  bracketSuperAnticommutativityTerm : bracketSuperAnticommutativity
  bracketSuperJacobiIdentityTerm : bracketSuperJacobiIdentity

structure ColorLieSuperAlgebraEvidence (A : ColorLieSuperAlgebra) where
  gradingConsistencyClosed : A.gradingConsistency
  colorCompatibilityClosed : A.colorCompatibility
  bracketBilinearityClosed : A.bracketBilinearity
  bracketSuperAnticommutativityClosed : A.bracketSuperAnticommutativity
  bracketSuperJacobiIdentityClosed : A.bracketSuperJacobiIdentity

def ColorLieSuperAlgebraClosed (A : ColorLieSuperAlgebra) : Prop :=
  A.gradingConsistency ∧ A.colorCompatibility ∧ A.bracketBilinearity ∧
  A.bracketSuperAnticommutativity ∧ A.bracketSuperJacobiIdentity

theorem color_lie_super_algebra_closed_from_evidence
    (A : ColorLieSuperAlgebra) (E : ColorLieSuperAlgebraEvidence A) :
    ColorLieSuperAlgebraClosed A := by
  exact And.intro E.gradingConsistencyClosed
    (And.intro E.colorCompatibilityClosed
      (And.intro E.bracketBilinearityClosed
        (And.intro E.bracketSuperAnticommutativityClosed
          E.bracketSuperJacobiIdentityClosed)))

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse