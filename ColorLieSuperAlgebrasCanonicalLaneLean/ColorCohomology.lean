import ColorLieSuperAlgebrasCanonicalLaneLean.ColorUniversalEnveloping

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure ColorCohomologyPackage {C : ColorGradedSpace}
  {B : ColorGradedBracketPackage C}
  {R : ColorSuperRepresentationPackage B}
  (U : ColorUniversalEnvelopingPackage R) where
  cochainComplex : Type
  coboundaryOperator : Prop
  cohomologyGroups : Prop
  invariantUnderEquivalence : Prop

structure ColorCohomologyEvidence {C : ColorGradedSpace}
  {B : ColorGradedBracketPackage C}
  {R : ColorSuperRepresentationPackage B}
  {U : ColorUniversalEnvelopingPackage R}
  (H : ColorCohomologyPackage U) where
  coboundaryOperatorClosed : H.coboundaryOperator
  cohomologyGroupsClosed : H.cohomologyGroups
  invariantUnderEquivalenceClosed : H.invariantUnderEquivalence

def ColorCohomologyClosed {C : ColorGradedSpace}
  {B : ColorGradedBracketPackage C}
  {R : ColorSuperRepresentationPackage B}
  {U : ColorUniversalEnvelopingPackage R}
  (H : ColorCohomologyPackage U) : Prop :=
  H.coboundaryOperator ∧ H.cohomologyGroups ∧ H.invariantUnderEquivalence

theorem color_cohomology_closed_from_evidence
  {C : ColorGradedSpace} {B : ColorGradedBracketPackage C}
  {R : ColorSuperRepresentationPackage B}
  {U : ColorUniversalEnvelopingPackage R}
  (H : ColorCohomologyPackage U)
  (E : ColorCohomologyEvidence H) : ColorCohomologyClosed H := by
  exact And.intro E.coboundaryOperatorClosed
    (And.intro E.cohomologyGroupsClosed E.invariantUnderEquivalenceClosed)

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse