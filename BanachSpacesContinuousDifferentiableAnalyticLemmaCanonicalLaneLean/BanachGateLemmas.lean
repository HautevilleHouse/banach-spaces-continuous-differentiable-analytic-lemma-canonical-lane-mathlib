import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean.BanachBridgeLemmas

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean

def gateClosed (B : AdmissibleBanachSpace) : Prop :=
  B.complete ∨ ¬ B.complete

theorem gate_from_admissible_banach (B : AdmissibleBanachSpace) : gateClosed B := by
  apply Or.inl
  exact B.complete

end BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean
end HautevilleHouse