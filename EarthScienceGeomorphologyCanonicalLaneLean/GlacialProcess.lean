import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure GlacialErosion where
  slidingVelocity : ℝ
  effectivePressure : ℝ
  erosionRate : ℝ
  slidingLaw : Prop

structure GlacialDeposition where
  sedimentFlux : ℝ
  depositionRate : ℝ
  massConservation : Prop

structure GlacialEvidence (G : GlacialErosion) where
  erosionPositive : G.erosionRate > 0
  slidingTermConsistent : Prop
  erosionPositiveClosed : erosionPositive
  slidingTermConsistentClosed : slidingTermConsistent

def GlacialClosed (G : GlacialErosion) : Prop :=
  G.slidingLaw ∧ G.erosionRate > 0

theorem glacial_closed_from_evidence (G : GlacialErosion) (ev : GlacialEvidence G) :
    GlacialClosed G := by
  exact And.intro G.slidingLaw ev.erosionPositiveClosed

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse