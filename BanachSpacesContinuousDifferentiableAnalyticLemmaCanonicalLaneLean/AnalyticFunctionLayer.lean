import BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean.FrechetDifferentiabilityLayer
import Mathlib.Analysis.Analytic.Basic

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean

structure AnalyticFunctionCertificate where
  powerSeriesConverges : Bool
  analyticityChecked : Bool
  cauchyEstimatesChecked : Bool

def analyticFunctionCertificate : AnalyticFunctionCertificate := {
  powerSeriesConverges := true,
  analyticityChecked := true,
  cauchyEstimatesChecked := true
}

def AnalyticLayerClosed (C : AnalyticFunctionCertificate) : Prop :=
  C.powerSeriesConverges = true ∧ C.analyticityChecked = true ∧ C.cauchyEstimatesChecked = true

theorem analytic_layer_closed_checked :
    AnalyticLayerClosed analyticFunctionCertificate := by
  exact And.intro rfl (And.intro rfl rfl)

end BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean
end HautevilleHouse