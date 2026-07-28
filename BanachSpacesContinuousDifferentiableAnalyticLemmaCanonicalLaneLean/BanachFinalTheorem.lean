import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean.BanachBridgeLemmas
import HautevilleHouse.BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean.BanachGateLemmas
import HautevilleHouse.BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean.BanachDifferentiableLayer
import HautevilleHouse.BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean.BanachAnalyticLayer

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean

def BanachSpaceCADClosure (B : AdmissibleBanachSpace) : Prop :=
  bridgeClosed B ∧ gateClosed B ∧ differentiableBridge B B ∧ analyticBridge B B

theorem banach_space_cad_endgame (B : AdmissibleBanachSpace) : BanachSpaceCADClosure B := by
  refine And.intro (bridge_from_admissible_banach B) ?_
  refine And.intro (gate_from_admissible_banach B) ?_
  refine And.intro (differentiable_bridge_holds B) (analytic_bridge_holds B)

end BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean
end HautevilleHouse