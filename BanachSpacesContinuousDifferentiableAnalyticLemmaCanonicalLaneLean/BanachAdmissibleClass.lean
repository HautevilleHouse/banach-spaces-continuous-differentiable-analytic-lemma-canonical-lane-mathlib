import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean

structure AdmissibleBanachSpace where
  space : Type
  norm : space → ℝ
  complete : Prop
  continuousDifferentiableBridge : Prop
  analyticBridge : Prop

def admissibleBanachSpaceDefault : AdmissibleBanachSpace := {
  space := Unit,
  norm := λ _ => 0,
  complete := True,
  continuousDifferentiableBridge := True,
  analyticBridge := True
}

end BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean
end HautevilleHouse