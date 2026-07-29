import EarthScienceGeomorphologyCanonicalLaneLean.LandformProcessPackage

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure ErosionTransportPackage {L : LandformProcessPackage} where
  fluvialErosion : Prop
  glacialErosion : Prop
  aeolianErosion : Prop
  sedimentTransportCapacity : Prop

structure ErosionTransportEvidence {L : LandformProcessPackage} (E : ErosionTransportPackage L) where
  fluvialErosionClosed : E.fluvialErosion
  glacialErosionClosed : E.glacialErosion
  aeolianErosionClosed : E.aeolianErosion
  sedimentTransportCapacityClosed : E.sedimentTransportCapacity

def ErosionTransportClosed {L : LandformProcessPackage} (E : ErosionTransportPackage L) : Prop :=
  E.fluvialErosion ∧ E.glacialErosion ∧ E.aeolianErosion ∧ E.sedimentTransportCapacity

theorem erosion_transport_closed_from_evidence {L : LandformProcessPackage} (E : ErosionTransportPackage L) (Ev : ErosionTransportEvidence E) :
    ErosionTransportClosed E := by
  exact And.intro Ev.fluvialErosionClosed (And.intro Ev.glacialErosionClosed (And.intro Ev.aeolianErosionClosed Ev.sedimentTransportCapacityClosed))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse
