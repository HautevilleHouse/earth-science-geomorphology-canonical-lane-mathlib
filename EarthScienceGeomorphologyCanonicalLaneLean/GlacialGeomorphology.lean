import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure GlacialGeomorphologyPackage where
  iceFlow : Prop
  erosionByGlaciers : Prop
  moraineFormation : Prop
  isostaticRebound : Prop

structure GlacialGeomorphologyEvidence (G : GlacialGeomorphologyPackage) where
  iceFlowClosed : G.iceFlow
  erosionByGlaciersClosed : G.erosionByGlaciers
  moraineFormationClosed : G.moraineFormation
  isostaticReboundClosed : G.isostaticRebound

def GlacialGeomorphologyClosed (G : GlacialGeomorphologyPackage) : Prop :=
  G.iceFlow ∧ G.erosionByGlaciers ∧
  G.moraineFormation ∧ G.isostaticRebound

theorem glacial_geomorphology_closed_from_evidence (G : GlacialGeomorphologyPackage)
    (E : GlacialGeomorphologyEvidence G) : GlacialGeomorphologyClosed G := by
  exact And.intro E.iceFlowClosed
    (And.intro E.erosionByGlaciersClosed
      (And.intro E.moraineFormationClosed E.isostaticReboundClosed))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse