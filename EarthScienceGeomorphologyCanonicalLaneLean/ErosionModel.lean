import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure ErosionProcess where
  processType : String
  transportCapacity : ℝ
  tectonicUpliftRate : ℝ
  equilibriumProfile : Prop

structure TransportLimitedErosion where
  supply : ℝ
  transportCapacityExceeded : Prop

structure WeatheringLimitedErosion where
  regolithProduction : ℝ
  erosionRateLimitedByWeathering : Prop

structure ErosionEvidence (E : ErosionProcess) where
  rateCalculated : ℝ
  balanced : Prop
  rateCalculatedClosed : rateCalculated > 0
  balancedClosed : balanced

def ErosionClosed (E : ErosionProcess) : Prop :=
  E.equilibriumProfile

theorem erosion_closed_from_evidence (E : ErosionProcess) (ev : ErosionEvidence E) :
    ErosionClosed E := by
  exact ev.balancedClosed

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse