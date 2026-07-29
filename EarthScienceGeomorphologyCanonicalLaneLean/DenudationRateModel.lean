import EarthScienceGeomorphologyCanonicalLaneLean.LandscapeEvolution

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure DenudationRateModel (L : LandscapeEvolutionPackage) where
  timeParameter : Type u
  denudationRate : L.Point → timeParameter → ℝ
  drivingFactors : Prop
  calibrationData : Prop
  rateEquation : Prop
  closureEvidence : Prop
  denudationRateTerm : denudationRate
  drivingFactorsTerm : drivingFactors
  calibrationDataTerm : calibrationData
  rateEquationTerm : rateEquation
  closureEvidenceTerm : closureEvidence

structure DenudationRateEvidence (L : LandscapeEvolutionPackage) (D : DenudationRateModel L) where
  drivingFactorsClosed : D.drivingFactors
  calibrationDataClosed : D.calibrationData
  rateEquationClosed : D.rateEquation
  closureEvidenceClosed : D.closureEvidence

def DenudationRateClosed (L : LandscapeEvolutionPackage) (D : DenudationRateModel L) : Prop :=
  D.drivingFactors ∧ D.calibrationData ∧ D.rateEquation ∧ D.closureEvidence

theorem denudation_rate_closed_from_evidence (L : LandscapeEvolutionPackage) (D : DenudationRateModel L)
    (E : DenudationRateEvidence L D) : DenudationRateClosed L D := by
  exact And.intro E.drivingFactorsClosed
    (And.intro E.calibrationDataClosed
      (And.intro E.rateEquationClosed E.closureEvidenceClosed))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse