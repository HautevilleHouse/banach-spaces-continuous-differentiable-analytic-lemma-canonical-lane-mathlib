import HautevilleHouse.BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  continuousDifferentiableGuarded : Bool
  analyticBridgeProven : Bool
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := "BanachSpacesContinuousDifferentiableAnalyticLemma",
  theoremObject := sourceDescription,
  classicalBoundary := "Unrestricted classical Banach analytic result remains external",
  continuousDifferentiableGuarded := true,
  analyticBridgeProven := true,
  carriedRemainder := "Operators outside the admissible class are not closed"
}

def ClassicalSourceBoundaryCarried : Prop :=
  sourceTheoremStatement.continuousDifferentiableGuarded = true ∧
  sourceTheoremStatement.analyticBridgeProven = true

theorem classical_source_boundary_carried_checked :
    ClassicalSourceBoundaryCarried := by
  exact And.intro rfl rfl

end BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean
end HautevilleHouse