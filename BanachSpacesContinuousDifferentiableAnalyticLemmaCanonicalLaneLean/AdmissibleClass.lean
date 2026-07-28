import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean

structure BanachAnalyticObject where
  banachSpace : Type
  normed : Bool
  analyticProperty : Prop
  continuousDiffProperty : Prop
  bridgeWitness : String

def primitiveBanachAnalyticObject : BanachAnalyticObject := {
  banachSpace := Unit,
  normed := true,
  analyticProperty := True,
  continuousDiffProperty := True,
  bridgeWitness := "Canonical Banach space bridge"
}

structure AdmissibleClass where
  object : BanachAnalyticObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def NativeBridgeClosed (O : BanachAnalyticObject) : Prop :=
  O.normed = true ∧ O.analyticProperty ∧ O.continuousDiffProperty

end BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean
end HautevilleHouse
