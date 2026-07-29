import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure FluvialNetworkPackage where
  drainageArea : Prop
  slope : Prop
  channelWidth : Prop
  discharge : Prop
  erosionRate : Prop
  sedimentLoad : Prop
  networkTopology : Prop
  streamPowerLaw : FluvialNetworkPackage -> Prop

structure FluvialNetworkEvidence (F : FluvialNetworkPackage) where
  drainageAreaClosed : F.drainageArea
  slopeClosed : F.slope
  channelWidthClosed : F.channelWidth
  dischargeClosed : F.discharge
  erosionRateClosed : F.erosionRate
  sedimentLoadClosed : F.sedimentLoad
  networkTopologyClosed : F.networkTopology
  streamPowerLawClosed : (F.streamPowerLaw F)

def FluvialNetworkClosed (F : FluvialNetworkPackage) : Prop :=
  F.drainageArea ∧ F.slope ∧ F.channelWidth ∧ F.discharge ∧
  F.erosionRate ∧ F.sedimentLoad ∧ F.networkTopology ∧
  F.streamPowerLaw F

theorem fluvial_network_closed_from_evidence (F : FluvialNetworkPackage) (E : FluvialNetworkEvidence F) :
    FluvialNetworkClosed F := by
  exact And.intro E.drainageAreaClosed
    (And.intro E.slopeClosed
      (And.intro E.channelWidthClosed
        (And.intro E.dischargeClosed
          (And.intro E.erosionRateClosed
            (And.intro E.sedimentLoadClosed
              (And.intro E.networkTopologyClosed E.streamPowerLawClosed))))))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse