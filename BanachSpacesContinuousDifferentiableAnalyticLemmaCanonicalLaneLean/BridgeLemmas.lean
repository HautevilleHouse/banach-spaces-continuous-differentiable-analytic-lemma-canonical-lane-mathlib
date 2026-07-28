import BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ScopedClosure A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact ⟨A.object.normed, A.object.analyticProperty, A.object.continuousDiffProperty,
    rfl, rfl, rfl⟩

def ScopedClosure (O : BanachAnalyticObject) : Prop :=
  NativeBridgeClosed O

end BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean
end HautevilleHouse
