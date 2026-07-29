import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

def ConstrainedColorLieSuperAlgebraClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_color_lie_super_algebra_endgame (A : AdmissibleClass) :
    ConstrainedColorLieSuperAlgebraClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse