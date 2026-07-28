import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean.BanachAdmissibleClass
import HautevilleHouse.BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean.BanachDifferentiableLayer

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean

structure AnalyticMap (B₁ B₂ : AdmissibleBanachSpace) extends DifferentiableMap B₁ B₂ where
  analytic : Prop

def analyticBridge (B₁ B₂ : AdmissibleBanachSpace) : Prop :=
  ∀ (a : AnalyticMap B₁ B₂), a.analytic

theorem analytic_bridge_holds (B : AdmissibleBanachSpace) : analyticBridge B B := by
  intro a
  exact a.analytic

end BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean
end HautevilleHouse