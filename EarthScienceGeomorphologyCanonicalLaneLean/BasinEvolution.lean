import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure BasinEvolutionPackage where
  drainageArea : Prop
  streamPowerLaw : Prop
  baseLevelChange : Prop
  topographicSteadyState : Prop

structure BasinEvolutionEvidence (B : BasinEvolutionPackage) where
  drainageAreaClosed : B.drainageArea
  streamPowerLawClosed : B.streamPowerLaw
  baseLevelChangeClosed : B.baseLevelChange
  topographicSteadyStateClosed : B.topographicSteadyState

def BasinEvolutionClosed (B : BasinEvolutionPackage) : Prop :=
  B.drainageArea ∧ B.streamPowerLaw ∧
  B.baseLevelChange ∧ B.topographicSteadyState

theorem basin_evolution_closed_from_evidence (B : BasinEvolutionPackage)
    (E : BasinEvolutionEvidence B) : BasinEvolutionClosed B := by
  exact And.intro E.drainageAreaClosed
    (And.intro E.streamPowerLawClosed
      (And.intro E.baseLevelChangeClosed E.topographicSteadyStateClosed))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse