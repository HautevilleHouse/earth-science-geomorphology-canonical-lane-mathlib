import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure GlacialErosionRateLawPackage where
  iceSlidingVelocity : Type u
  effectivePressure : Type v
  basalShearStress : Prop
  erosionRateLaw : Prop
  bedrockFrictionCoefficient : Prop
  sedimentProduction : Prop

structure GlacialErosionRateLawEvidence (G : GlacialErosionRateLawPackage) where
  basalShearStressClosed : G.basalShearStress
  erosionRateLawClosed : G.erosionRateLaw
  bedrockFrictionCoefficientClosed : G.bedrockFrictionCoefficient
  sedimentProductionClosed : G.sedimentProduction

def GlacialErosionRateLawClosed (G : GlacialErosionRateLawPackage) : Prop :=
  G.basalShearStress ∧ G.erosionRateLaw ∧ G.bedrockFrictionCoefficient ∧ G.sedimentProduction

theorem glacial_erosion_rate_law_closed_from_evidence (G : GlacialErosionRateLawPackage) (E : GlacialErosionRateLawEvidence G) : GlacialErosionRateLawClosed G := by
  exact And.intro E.basalShearStressClosed (And.intro E.erosionRateLawClosed (And.intro E.bedrockFrictionCoefficientClosed E.sedimentProductionClosed))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse
