import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean.BanachAdmissibleClass

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean

def bridgeClosed (B : AdmissibleBanachSpace) : Prop :=
  B.complete ∧ B.continuousDifferentiableBridge ∧ B.analyticBridge

theorem bridge_from_admissible_banach (B : AdmissibleBanachSpace) : bridgeClosed B := by
  exact ⟨B.complete, B.continuousDifferentiableBridge, B.analyticBridge⟩

end BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean
end HautevilleHouse