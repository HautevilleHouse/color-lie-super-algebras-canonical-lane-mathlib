import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure CentralExtension (L : Type) where
  underlyingAlgebra : Type
  extensionCocycle : L × L → ℂ
  cocycleCondition : Prop

def centralExtensionClosed : Prop := True

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse