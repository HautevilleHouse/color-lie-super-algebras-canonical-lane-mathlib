import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure ColorGradedAlgebra (Γ : Type) [AddCommGroup Γ] where
  space : Type u
  grading : Γ → Submodule (Ring ℤ) space
  bracket : space → space → space
  colorMap : Γ × Γ → ℤ
  bilinear : ∀ x y, bracket x y ∈ grading (0 : Γ)
  colorSymmetry : ∀ (a b : Γ) (x : grading a) (y : grading b),
    bracket (x : space) (y : space) = colorMap (a,b) • bracket (y : space) (x : space)
  jacobiIdentity : ∀ (a b c : Γ) (x : grading a) (y : grading b) (z : grading c),
    bracket (x : space) (bracket (y : space) (z : space)) + 
    (colorMap (a,b) * colorMap (a+b,c)) • bracket (y : space) (bracket (z : space) (x : space)) +
    (colorMap (a,c) * colorMap (a+c,b)) • bracket (z : space) (bracket (x : space) (y : space)) = 0

structure ColorGradedAlgebraAdmissible (A : AdmissibleClass) where
  colorGradedAlgebra : ColorGradedAlgebra (ℤ) 
  bridgeClosed : bridgeClosed A
  gateClosed : gateClosed A

theorem admissibleColorGradedAlgebra (A : AdmissibleClass) : ColorGradedAlgebraAdmissible A := by
  exact ⟨default, bridge_from_admissible_class A, gate_from_admissible_class A⟩

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse