import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean.BanachAdmissibleClass

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean

structure DifferentiableMap (B₁ B₂ : AdmissibleBanachSpace) where
  f : B₁.space → B₂.space
  continuous : Prop
  differentiable : Prop

def differentiableBridge (B₁ B₂ : AdmissibleBanachSpace) : Prop :=
  ∀ (d : DifferentiableMap B₁ B₂), d.continuous ∧ d.differentiable

theorem differentiable_bridge_holds (B : AdmissibleBanachSpace) : differentiableBridge B B := by
  intro d
  exact ⟨d.continuous, d.differentiable⟩

end BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean
end HautevilleHouse