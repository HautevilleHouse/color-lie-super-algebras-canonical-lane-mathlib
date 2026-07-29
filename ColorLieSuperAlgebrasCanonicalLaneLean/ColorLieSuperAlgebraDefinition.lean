import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure ColorLieSuperAlgebra where
  underlyingSuperVectorSpace : Type u
  bilinearBracket : underlyingSuperVectorSpace → underlyingSuperVectorSpace → underlyingSuperVectorSpace
  colorFunction : underlyingSuperVectorSpace → underlyingSuperVectorSpace → ℤ₂
  superJacobiIdentity : Prop
  colorSymmetry : Prop
  colorJacobiIdentity : Prop
  consistencyConditions : Prop

structure ColorLieSuperAlgebraEvidence (L : ColorLieSuperAlgebra) where
  superJacobiIdentityClosed : L.superJacobiIdentity
  colorSymmetryClosed : L.colorSymmetry
  colorJacobiIdentityClosed : L.colorJacobiIdentity
  consistencyConditionsClosed : L.consistencyConditions

def ColorLieSuperAlgebraClosed (L : ColorLieSuperAlgebra) : Prop :=
  L.superJacobiIdentity ∧ L.colorSymmetry ∧ L.colorJacobiIdentity ∧ L.consistencyConditions

theorem color_lie_super_algebra_closed_from_evidence (L : ColorLieSuperAlgebra) (E : ColorLieSuperAlgebraEvidence L) : ColorLieSuperAlgebraClosed L := by
  exact And.intro E.superJacobiIdentityClosed (And.intro E.colorSymmetryClosed (And.intro E.colorJacobiIdentityClosed E.consistencyConditionsClosed))

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse
