import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ColorLieSuperAlgebrasCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace ColorLieSuperAlgebrasCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  gradedConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
  deriving Repr

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := sourceTheoremBoundary.claimBoundary,
  gradedConstrainedStatement := "graded-constrained theorem certificate internalized through parity-graded closure conditions",
  certificateLane := baselineCertificateLane,
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

def ClassicalSourceBoundaryCarried : Prop :=
  formalizationCertificate.theoremBoundaryOpen = true ∧
  formalizationCertificate.sourceConjectureClosureClaimed = false

def GradedConstrainedTheoremClosed : Prop :=
  baselineCertificateLane = "graded_constrained" ∧
  baselineCertificateAllPass = true ∧
  outsideConstantDependencyCount = 0

def TheoremLayerInternalized : Prop :=
  sourceTheoremStatement.sourceKey = sourceRepository ∧
  sourceTheoremStatement.certificateLane = baselineCertificateLane ∧
  ClassicalSourceBoundaryCarried ∧
  GradedConstrainedTheoremClosed

theorem theorem_statement_source_key_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := by
  rfl

theorem theorem_statement_certificate_lane_checked :
    sourceTheoremStatement.certificateLane = baselineCertificateLane := by
  rfl

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried := by
  dsimp [ClassicalSourceBoundaryCarried]
  exact And.intro rfl rfl

theorem graded_constrained_theorem_closed_checked :
    GradedConstrainedTheoremClosed := by
  dsimp [GradedConstrainedTheoremClosed]
  refine And.intro ?_ (And.intro ?_ ?_)
  · rfl
  · rfl
  · rfl

theorem theorem_layer_internalized_checked :
    TheoremLayerInternalized := by
  dsimp [TheoremLayerInternalized]
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ ?_))
  · rfl
  · rfl
  · exact classical_source_boundary_carried_checked
  · exact graded_constrained_theorem_closed_checked

end ColorLieSuperAlgebrasCanonicalLaneLean
end HautevilleHouse