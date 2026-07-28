import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean

structure AdmittedTheoremObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String
deriving Repr, DecidableEq

structure AdmissibleClass where
  object : AdmittedTheoremObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end BanachSpacesContinuousDifferentiableAnalyticLemmaCanonicalLaneLean
end HautevilleHouse