import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure ColorGradedSpace where
  carrier : Type
  gradingGroup : Type
  grading : gradingGroup → Set carrier
  superVectorSpaceStructure : Prop
  colorCommutativity : Prop

structure AdmittedColorObject where
  space : ColorGradedSpace
  consistentGrading : Prop
  colorLieBracket : Prop
  bracketSatisfiesJacobi : Prop
  conclusion : bracketSatisfiesJacobi

structure AdmissibleColorClass where
  object : AdmittedColorObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedColorClosure (A : AdmissibleColorClass) : Prop :=
  (A.object.bracketSatisfiesJacobi) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse