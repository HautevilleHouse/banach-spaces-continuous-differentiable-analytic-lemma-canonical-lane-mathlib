import BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean.AdmissibleClass
import Mathlib.Analysis.Banach.Basic
import Mathlib.Analysis.Analytic.Basic

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean

structure BanachAnalyticSubstrate where
  banachSpace : Type
  norm : String
  analyticOpen : Bool
  continuousDiffOpen : Bool

def primitiveBanachAnalyticSubstrate : BanachAnalyticSubstrate := {
  banachSpace := Unit,
  norm := "sup norm",
  analyticOpen := true,
  continuousDiffOpen := true
}

def BanachSubstrateReady (S : BanachAnalyticSubstrate) : Prop :=
  S.analyticOpen = true ∧ S.continuousDiffOpen = true

theorem banach_substrate_ready_checked :
    BanachSubstrateReady primitiveBanachAnalyticSubstrate := by
  exact And.intro rfl rfl

end BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean
end HautevilleHouse
