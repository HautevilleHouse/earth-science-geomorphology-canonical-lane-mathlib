import EarthScienceGeomorphologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure LandscapeEvolutionPackage where
  Point : Type u
  Time : Type v
  surfaceHeight : Point → Time → ℝ
  tectonicForcing : Prop
  climateRegime : Prop
  closureEvidence : Prop
  surfaceHeightTerm : surfaceHeight
  tectonicForcingTerm : tectonicForcing
  climateRegimeTerm : climateRegime
  closureEvidenceTerm : closureEvidence

structure LandscapeEvolutionEvidence (L : LandscapeEvolutionPackage) where
  tectonicForcingClosed : L.tectonicForcing
  climateRegimeClosed : L.climateRegime
  closureEvidenceClosed : L.closureEvidence

def LandscapeEvolutionClosed (L : LandscapeEvolutionPackage) : Prop :=
  L.tectonicForcing ∧ L.climateRegime ∧ L.closureEvidence

theorem landscape_evolution_closed_from_evidence (L : LandscapeEvolutionPackage)
    (E : LandscapeEvolutionEvidence L) : LandscapeEvolutionClosed L := by
  exact And.intro E.tectonicForcingClosed
    (And.intro E.climateRegimeClosed E.closureEvidenceClosed)

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse