import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure HillslopeProcessPackage where
  soilProduction : Prop
  creepRate : Prop
  landsliding : Prop
  weathering : Prop
  slopeAngle : Prop
  vegetationCover : Prop
  diffusionEquation : HillslopeProcessPackage -> Prop

structure HillslopeProcessEvidence (H : HillslopeProcessPackage) where
  soilProductionClosed : H.soilProduction
  creepRateClosed : H.creepRate
  landslidingClosed : H.landsliding
  weatheringClosed : H.weathering
  slopeAngleClosed : H.slopeAngle
  vegetationCoverClosed : H.vegetationCover
  diffusionEquationClosed : (H.diffusionEquation H)

def HillslopeProcessClosed (H : HillslopeProcessPackage) : Prop :=
  H.soilProduction ∧ H.creepRate ∧ H.landsliding ∧ H.weathering ∧
  H.slopeAngle ∧ H.vegetationCover ∧ H.diffusionEquation H

theorem hillslope_process_closed_from_evidence (H : HillslopeProcessPackage) (E : HillslopeProcessEvidence H) :
    HillslopeProcessClosed H := by
  exact And.intro E.soilProductionClosed
    (And.intro E.creepRateClosed
      (And.intro E.landslidingClosed
        (And.intro E.weatheringClosed
          (And.intro E.slopeAngleClosed
            (And.intro E.vegetationCoverClosed E.diffusionEquationClosed)))))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse