import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure ThresholdCriticalityPackage where
  shearStressThreshold : Prop
  criticalSlope : Prop
  exceedanceProbability : Prop
  landslidingTrigger : Prop

structure ThresholdCriticalityEvidence (T : ThresholdCriticalityPackage) where
  shearStressThresholdClosed : T.shearStressThreshold
  criticalSlopeClosed : T.criticalSlope
  exceedanceProbabilityClosed : T.exceedanceProbability
  landslidingTriggerClosed : T.landslidingTrigger

def ThresholdCriticalityClosed (T : ThresholdCriticalityPackage) : Prop :=
  T.shearStressThreshold ∧ T.criticalSlope ∧
  T.exceedanceProbability ∧ T.landslidingTrigger

theorem threshold_criticality_closed_from_evidence (T : ThresholdCriticalityPackage)
    (E : ThresholdCriticalityEvidence T) : ThresholdCriticalityClosed T := by
  exact And.intro E.shearStressThresholdClosed
    (And.intro E.criticalSlopeClosed
      (And.intro E.exceedanceProbabilityClosed E.landslidingTriggerClosed))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse