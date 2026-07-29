import EarthScienceGeomorphologyCanonicalLaneLean.ErosionTransportPackage

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure FluvialGeomorphologyPackage {L : LandformProcessPackage} {E : ErosionTransportPackage L} where
  channelFormation : Prop
  floodplainDevelopment : Prop
  drainageNetworkEvolution : Prop
  baseLevelChangeResponse : Prop

structure FluvialGeomorphologyEvidence {L : LandformProcessPackage} {E : ErosionTransportPackage L} (F : FluvialGeomorphologyPackage L E) where
  channelFormationClosed : F.channelFormation
  floodplainDevelopmentClosed : F.floodplainDevelopment
  drainageNetworkEvolutionClosed : F.drainageNetworkEvolution
  baseLevelChangeResponseClosed : F.baseLevelChangeResponse

def FluvialGeomorphologyClosed {L : LandformProcessPackage} {E : ErosionTransportPackage L} (F : FluvialGeomorphologyPackage L E) : Prop :=
  F.channelFormation ∧ F.floodplainDevelopment ∧ F.drainageNetworkEvolution ∧ F.baseLevelChangeResponse

theorem fluvial_geomorphology_closed_from_evidence {L : LandformProcessPackage} {E : ErosionTransportPackage L} (F : FluvialGeomorphologyPackage L E) (Ev : FluvialGeomorphologyEvidence F) :
    FluvialGeomorphologyClosed F := by
  exact And.intro Ev.channelFormationClosed (And.intro Ev.floodplainDevelopmentClosed (And.intro Ev.drainageNetworkEvolutionClosed Ev.baseLevelChangeResponseClosed))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse
