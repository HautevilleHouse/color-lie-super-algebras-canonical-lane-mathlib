import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure CocycleEquivalence where
  source : Type
  target : Type
  cocycleMap : source → target
  compatibleWithGrading : Prop

def cocycleEquivalenceClosed : Prop := True

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse