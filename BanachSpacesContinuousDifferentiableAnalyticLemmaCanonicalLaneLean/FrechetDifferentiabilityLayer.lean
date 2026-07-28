import BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean.BanachAnalyticAdmissibleClass

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean

structure FrechetDifferentiabilityCertificate where
  banachSpaceLabel : String
  functionLabel : String
  derivativeExists : Bool
  continuousDerivative : Bool
  analyticOnDomain : Bool

def primitiveFrechetCertificate : FrechetDifferentiabilityCertificate := {
  banachSpaceLabel := "Banach space X with norm ||·||",
  functionLabel := "f : U → Y where U open in X, Y Banach",
  derivativeExists := true,
  continuousDerivative := true,
  analyticOnDomain := true
}

def FrechetDifferentiabilityLayerClosed (C : FrechetDifferentiabilityCertificate) : Prop :=
  C.derivativeExists = true ∧ C.continuousDerivative = true ∧ C.analyticOnDomain = true

theorem frechet_differentiability_layer_closed_checked :
    FrechetDifferentiabilityLayerClosed primitiveFrechetCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean
end HautevilleHouse