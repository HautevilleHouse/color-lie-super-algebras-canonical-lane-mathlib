import canonicalLaneMathlib.AdmissibleClass

/-!
# Color Representations
-/

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure ColorRepresentationPackage where
  representationSpace : Type u
  actionMap : ColorLieSuperAlgebra → (representationSpace → representationSpace)
  equivariance : Prop
  irreducibility : Prop
  dimension : ℕ

def ColorRepresentationWitnessClosed (R : ColorRepresentationPackage) : Prop :=
  R.equivariance ∧ R.irreducibility

structure ColorRepresentationEvidence (R : ColorRepresentationPackage) where
  equivarianceClosed : R.equivariance
  irreducibilityClosed : R.irreducibility

theorem color_representation_closed_from_evidence
    (R : ColorRepresentationPackage) (E : ColorRepresentationEvidence R) :
    ColorRepresentationWitnessClosed R := by
  exact And.intro E.equivarianceClosed E.irreducibilityClosed

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse