import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure LandformEvolutionPackage where
  baseLevel : Prop
  upliftRate : Prop
  erodibility : Prop
  diffusionCoefficient : Prop
  tectonicForcing : Prop
  climaticForcing : Prop
  initialTopography : Prop
  evolutionEquation : LandformEvolutionPackage -> Prop

structure LandformEvolutionEvidence (L : LandformEvolutionPackage) where
  baseLevelClosed : L.baseLevel
  upliftRateClosed : L.upliftRate
  erodibilityClosed : L.erodibility
  diffusionCoefficientClosed : L.diffusionCoefficient
  tectonicForcingClosed : L.tectonicForcing
  climaticForcingClosed : L.climaticForcing
  initialTopographyClosed : L.initialTopography
  evolutionEquationClosed : (L.evolutionEquation L)

def LandformEvolutionClosed (L : LandformEvolutionPackage) : Prop :=
  L.baseLevel ∧ L.upliftRate ∧ L.erodibility ∧ L.diffusionCoefficient ∧
  L.tectonicForcing ∧ L.climaticForcing ∧ L.initialTopography ∧
  L.evolutionEquation L

theorem landform_evolution_closed_from_evidence (L : LandformEvolutionPackage) (E : LandformEvolutionEvidence L) :
    LandformEvolutionClosed L := by
  exact And.intro E.baseLevelClosed
    (And.intro E.upliftRateClosed
      (And.intro E.erodibilityClosed
        (And.intro E.diffusionCoefficientClosed
          (And.intro E.tectonicForcingClosed
            (And.intro E.climaticForcingClosed
              (And.intro E.initialTopographyClosed E.evolutionEquationClosed))))))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse