import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure SedimentTransportPackage where
  sedimentSupply : Prop
  transportCapacity : Prop
  grainSizeDistribution : Prop
  flowRegime : Prop
  bedMaterial : Prop
  entrainmentThreshold : Prop
  depositionRate : Prop
  transportEquation : SedimentTransportPackage -> Prop

structure SedimentTransportEvidence (S : SedimentTransportPackage) where
  sedimentSupplyClosed : S.sedimentSupply
  transportCapacityClosed : S.transportCapacity
  grainSizeDistributionClosed : S.grainSizeDistribution
  flowRegimeClosed : S.flowRegime
  bedMaterialClosed : S.bedMaterial
  entrainmentThresholdClosed : S.entrainmentThreshold
  depositionRateClosed : S.depositionRate
  transportEquationClosed : (S.transportEquation S)

def SedimentTransportClosed (S : SedimentTransportPackage) : Prop :=
  S.sedimentSupply ∧ S.transportCapacity ∧ S.grainSizeDistribution ∧
  S.flowRegime ∧ S.bedMaterial ∧ S.entrainmentThreshold ∧ S.depositionRate ∧
  S.transportEquation S

theorem sediment_transport_closed_from_evidence (S : SedimentTransportPackage) (E : SedimentTransportEvidence S) :
    SedimentTransportClosed S := by
  exact And.intro E.sedimentSupplyClosed
    (And.intro E.transportCapacityClosed
      (And.intro E.grainSizeDistributionClosed
        (And.intro E.flowRegimeClosed
          (And.intro E.bedMaterialClosed
            (And.intro E.entrainmentThresholdClosed
              (And.intro E.depositionRateClosed E.transportEquationClosed))))))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse