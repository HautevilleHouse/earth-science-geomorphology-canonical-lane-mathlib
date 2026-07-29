import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure AeolianSedimentTransport where
  windVelocity : ℝ
  sandFlux : ℝ
  thresholdVelocity : ℝ
  saltationEquation : Prop

structure DuneMorphology where
  duneHeight : ℝ
  duneSpacing : ℝ
  migrationRate : ℝ
  equilibriumForm : Prop

structure AeolianEvidence (A : AeolianSedimentTransport) where
  windAboveThreshold : A.windVelocity > A.thresholdVelocity
  fluxPositive : A.sandFlux > 0
  windClosed : windAboveThreshold
  fluxClosed : fluxPositive

def AeolianClosed (A : AeolianSedimentTransport) : Prop :=
  A.saltationEquation ∧ A.windVelocity > A.thresholdVelocity ∧ A.sandFlux > 0

theorem aeolian_closed_from_evidence (A : AeolianSedimentTransport) (ev : AeolianEvidence A) :
    AeolianClosed A := by
  exact And.intro A.saltationEquation (And.intro ev.windClosed ev.fluxClosed)

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse