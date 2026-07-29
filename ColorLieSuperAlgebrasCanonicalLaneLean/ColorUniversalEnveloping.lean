import ColorLieSuperAlgebrasCanonicalLaneLean.ColorSuperRepresentation

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure ColorUniversalEnvelopingPackage {C : ColorGradedSpace}
  {B : ColorGradedBracketPackage C}
  (R : ColorSuperRepresentationPackage B) where
  envelopingAlgebra : Type
  gradedAlgebraStructure : Prop
  universalProperty : Prop
  poincareBirkhoffWitt : Prop

structure ColorUniversalEnvelopingEvidence {C : ColorGradedSpace}
  {B : ColorGradedBracketPackage C}
  {R : ColorSuperRepresentationPackage B}
  (U : ColorUniversalEnvelopingPackage R) where
  gradedAlgebraStructureClosed : U.gradedAlgebraStructure
  universalPropertyClosed : U.universalProperty
  poincareBirkhoffWittClosed : U.poincareBirkhoffWitt

def ColorUniversalEnvelopingClosed {C : ColorGradedSpace}
  {B : ColorGradedBracketPackage C}
  {R : ColorSuperRepresentationPackage B}
  (U : ColorUniversalEnvelopingPackage R) : Prop :=
  U.gradedAlgebraStructure ∧ U.universalProperty ∧ U.poincareBirkhoffWitt

theorem color_universal_enveloping_closed_from_evidence
  {C : ColorGradedSpace} {B : ColorGradedBracketPackage C}
  {R : ColorSuperRepresentationPackage B}
  (U : ColorUniversalEnvelopingPackage R)
  (E : ColorUniversalEnvelopingEvidence U) : ColorUniversalEnvelopingClosed U := by
  exact And.intro E.gradedAlgebraStructureClosed
    (And.intro E.universalPropertyClosed E.poincareBirkhoffWittClosed)

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse