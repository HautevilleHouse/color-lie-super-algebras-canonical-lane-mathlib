import canonicalLaneMathlib.AdmissibleClass

/-!
# Universal Enveloping Algebra for Color Lie Super Algebras
-/

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure UniversalEnvelopingPackage where
  underlyingAlgebra : Type u
  inclusionMap : ColorLieSuperAlgebra → underlyingAlgebra
  universalProperty : Prop
  filtration : Prop
  poincareBirkhoffWitt : Prop

def UniversalEnvelopingWitnessClosed (U : UniversalEnvelopingPackage) : Prop :=
  U.universalProperty ∧ U.filtration ∧ U.poincareBirkhoffWitt

structure UniversalEnvelopingEvidence (U : UniversalEnvelopingPackage) where
  universalPropertyClosed : U.universalProperty
  filtrationClosed : U.filtration
  poincareBirkhoffWittClosed : U.poincareBirkhoffWitt

theorem universal_enveloping_closed_from_evidence
    (U : UniversalEnvelopingPackage) (E : UniversalEnvelopingEvidence U) :
    UniversalEnvelopingWitnessClosed U := by
  exact And.intro E.universalPropertyClosed
    (And.intro E.filtrationClosed E.poincareBirkhoffWittClosed)

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse