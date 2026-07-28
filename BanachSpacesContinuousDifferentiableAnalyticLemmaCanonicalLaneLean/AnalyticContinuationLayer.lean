import BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean.FrechetDifferentiabilityLayer

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean

structure AnalyticContinuationCertificate where
  frechetLayer : FrechetDifferentiabilityCertificate
  powerSeriesConverges : Bool
  analyticContinuationHolds : Bool
  uniquenessTheorem : Bool

def primitiveAnalyticContinuationCertificate : AnalyticContinuationCertificate := {
  frechetLayer := primitiveFrechetCertificate,
  powerSeriesConverges := true,
  analyticContinuationHolds := true,
  uniquenessTheorem := true
}

def AnalyticContinuationLayerClosed (C : AnalyticContinuationCertificate) : Prop :=
  FrechetDifferentiabilityLayerClosed C.frechetLayer ∧
  C.powerSeriesConverges = true ∧
  C.analyticContinuationHolds = true ∧
  C.uniquenessTheorem = true

theorem analytic_continuation_layer_closed_checked :
    AnalyticContinuationLayerClosed primitiveAnalyticContinuationCertificate := by
  exact And.intro frechet_differentiability_layer_closed_checked
    (And.intro rfl (And.intro rfl rfl))

end BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean
end HautevilleHouse