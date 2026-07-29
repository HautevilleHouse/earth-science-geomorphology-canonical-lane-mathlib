import EarthScienceGeomorphologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure LandformProcessPackage where
  weatheringRind : Prop
  massWasting : Prop
  slopeProcesses : Prop
  drainageBasinFormation : Prop

structure LandformProcessEvidence (L : LandformProcessPackage) where
  weatheringRindClosed : L.weatheringRind
  massWastingClosed : L.massWasting
  slopeProcessesClosed : L.slopeProcesses
  drainageBasinFormationClosed : L.drainageBasinFormation

def LandformProcessClosed (L : LandformProcessPackage) : Prop :=
  L.weatheringRind ∧ L.massWasting ∧ L.slopeProcesses ∧ L.drainageBasinFormation

theorem landform_process_closed_from_evidence (L : LandformProcessPackage) (E : LandformProcessEvidence L) :
    LandformProcessClosed L := by
  exact And.intro E.weatheringRindClosed (And.intro E.massWastingClosed (And.intro E.slopeProcessesClosed E.drainageBasinFormationClosed))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse
