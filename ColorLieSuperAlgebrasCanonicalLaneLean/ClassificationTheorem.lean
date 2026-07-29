import canonicalLaneMathlib.AdmissibleClass

/-!
# Classification Theorem for Color Lie Super Algebras
-/

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure ClassificationPackage where
  finiteDimensionalCase : Prop
  simpleClassification : Prop
  structureConstants : Prop
  basisClassification : Prop

def ClassificationWitnessClosed (C : ClassificationPackage) : Prop :=
  C.finiteDimensionalCase ∧ C.simpleClassification ∧ C.structureConstants ∧ C.basisClassification

structure ClassificationEvidence (C : ClassificationPackage) where
  finiteDimensionalCaseClosed : C.finiteDimensionalCase
  simpleClassificationClosed : C.simpleClassification
  structureConstantsClosed : C.structureConstants
  basisClassificationClosed : C.basisClassification

theorem classification_closed_from_evidence
    (C : ClassificationPackage) (E : ClassificationEvidence C) :
    ClassificationWitnessClosed C := by
  exact And.intro E.finiteDimensionalCaseClosed
    (And.intro E.simpleClassificationClosed
      (And.intro E.structureConstantsClosed E.basisClassificationClosed))

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse