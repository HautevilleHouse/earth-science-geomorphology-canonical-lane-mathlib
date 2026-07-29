import EarthScienceGeomorphologyCanonicalLaneLean.DenudationRateModel

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure ErosionTransportCapacities (L : LandscapeEvolutionPackage) (D : DenudationRateModel L) where
  hillslopeTransport : Prop
  fluvialBedrockIncision : Prop
  glacialErosion : Prop
  depositionRegulation : Prop

def ErosionTransportCapacityClosed (L : LandscapeEvolutionPackage) (D : DenudationRateModel L)
    (E : ErosionTransportCapacities L D) : Prop :=
  E.hillslopeTransport ∧ E.fluvialBedrockIncision ∧ E.glacialErosion ∧ E.depositionRegulation

structure ErosionTransportCapacitiesEvidence (L : LandscapeEvolutionPackage) (D : DenudationRateModel L)
    (E : ErosionTransportCapacities L D) where
  hillslopeTransportClosed : E.hillslopeTransport
  fluvialBedrockIncisionClosed : E.fluvialBedrockIncision
  glacialErosionClosed : E.glacialErosion
  depositionRegulationClosed : E.depositionRegulation

theorem erosion_transport_capacities_closed_from_evidence
    (L : LandscapeEvolutionPackage) (D : DenudationRateModel L)
    (E : ErosionTransportCapacities L D) (Ev : ErosionTransportCapacitiesEvidence L D E) :
    ErosionTransportCapacityClosed L D E := by
  exact And.intro Ev.hillslopeTransportClosed
    (And.intro Ev.fluvialBedrockIncisionClosed
      (And.intro Ev.glacialErosionClosed Ev.depositionRegulationClosed))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse