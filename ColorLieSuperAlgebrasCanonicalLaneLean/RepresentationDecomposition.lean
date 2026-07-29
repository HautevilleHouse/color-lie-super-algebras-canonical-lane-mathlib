import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure ColorLieAlgebraModule (G : Type) [AddGroup G] (L : ColorGradedVectorSpace G) where
  moduleAction : L.totalSpace → ℕ → ℕ
  actionRespectsGrading : Prop

def representationDecompositionClosed : Prop := True

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse