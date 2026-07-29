import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure TransportLawPackage where
  sedimentContinuity : Prop
  erosionDepositionBalance : Prop
  hillslopeDiffusion : Prop
  fluvialIncision : Prop

structure TransportLawEvidence (T : TransportLawPackage) where
  sedimentContinuityClosed : T.sedimentContinuity
  erosionDepositionBalanceClosed : T.erosionDepositionBalance
  hillslopeDiffusionClosed : T.hillslopeDiffusion
  fluvialIncisionClosed : T.fluvialIncision

def TransportLawClosed (T : TransportLawPackage) : Prop :=
  T.sedimentContinuity ∧ T.erosionDepositionBalance ∧
  T.hillslopeDiffusion ∧ T.fluvialIncision

theorem transport_law_closed_from_evidence (T : TransportLawPackage) (E : TransportLawEvidence T) :
    TransportLawClosed T := by
  exact And.intro E.sedimentContinuityClosed
    (And.intro E.erosionDepositionBalanceClosed
      (And.intro E.hillslopeDiffusionClosed E.fluvialIncisionClosed))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse