import canonicalLaneMathlib.AdmissibleClass

/-!
# Color Lie Super Algebra Definitions
-/

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure ColorLieSuperAlgebra where
  underlyingSuperVectorSpace : Type u
  bracket : underlyingSuperVectorSpace → underlyingSuperVectorSpace → underlyingSuperVectorSpace
  colorMap : underlyingSuperVectorSpace → ℤ₂  -- parity
  gradedBracket : Prop
  superJacobiIdentity : Prop
  colorCommutation : Prop

def ColorLieSuperAlgebraWitnessClosed (A : ColorLieSuperAlgebra) : Prop :=
  A.gradedBracket ∧ A.superJacobiIdentity ∧ A.colorCommutation

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse