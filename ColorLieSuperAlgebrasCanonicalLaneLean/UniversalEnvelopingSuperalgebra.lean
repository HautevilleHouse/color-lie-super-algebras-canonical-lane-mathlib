import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ColorLieSuperAlgebrasCanonicalLaneLean.GradedAlgebraStructure

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure UniversalEnvelopingSuperalgebra where
  lieSuperalgebra : ColorLieSuperAlgebra
  underlyingSuperalgebra : Type u
  [instAddCommGroup : AddCommGroup underlyingSuperalgebra]
  [instRing : Ring underlyingSuperalgebra]
  grading : ℤ × ℤ → Set underlyingSuperalgebra
  inclusionMap : lieSuperalgebra.vectorSpace → underlyingSuperalgebra
  universalProperty : Prop
  universalPropertyTerm : universalProperty

structure UniversalEnvelopingSuperalgebraEvidence (U : UniversalEnvelopingSuperalgebra) where
  universalPropertyClosed : U.universalProperty

def UniversalEnvelopingSuperalgebraClosed (U : UniversalEnvelopingSuperalgebra) : Prop :=
  U.universalProperty

theorem universal_enveloping_superalgebra_closed_from_evidence
    (U : UniversalEnvelopingSuperalgebra) (E : UniversalEnvelopingSuperalgebraEvidence U) :
    UniversalEnvelopingSuperalgebraClosed U := by
  exact E.universalPropertyClosed

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse