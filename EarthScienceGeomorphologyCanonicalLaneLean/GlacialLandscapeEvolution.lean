import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure GlacialLandscapePackage where
  iceFlowDynamics : Prop
  erosionByAbrasion : Prop
  quarrying : Prop
  basalSliding : Prop
  subglacialHydrology : Prop
  valleyGeometry : Prop
  deposition : Prop
  glacialErosionLaw : GlacialLandscapePackage -> Prop

structure GlacialLandscapeEvidence (G : GlacialLandscapePackage) where
  iceFlowDynamicsClosed : G.iceFlowDynamics
  erosionByAbrasionClosed : G.erosionByAbrasion
  quarryingClosed : G.quarrying
  basalSlidingClosed : G.basalSliding
  subglacialHydrologyClosed : G.subglacialHydrology
  valleyGeometryClosed : G.valleyGeometry
  depositionClosed : G.deposition
  glacialErosionLawClosed : (G.glacialErosionLaw G)

def GlacialLandscapeClosed (G : GlacialLandscapePackage) : Prop :=
  G.iceFlowDynamics ∧ G.erosionByAbrasion ∧ G.quarrying ∧
  G.basalSliding ∧ G.subglacialHydrology ∧ G.valleyGeometry ∧ G.deposition ∧
  G.glacialErosionLaw G

theorem glacial_landscape_closed_from_evidence (G : GlacialLandscapePackage) (E : GlacialLandscapeEvidence G) :
    GlacialLandscapeClosed G := by
  exact And.intro E.iceFlowDynamicsClosed
    (And.intro E.erosionByAbrasionClosed
      (And.intro E.quarryingClosed
        (And.intro E.basalSlidingClosed
          (And.intro E.subglacialHydrologyClosed
            (And.intro E.valleyGeometryClosed
              (And.intro E.depositionClosed E.glacialErosionLawClosed))))))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse