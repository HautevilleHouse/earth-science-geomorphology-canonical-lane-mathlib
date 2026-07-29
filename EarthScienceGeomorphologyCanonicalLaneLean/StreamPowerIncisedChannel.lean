import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure StreamPowerIncisedChannelPackage where
  channelGradient : Type u
  contributingArea : Type v
  streamPowerLaw : Prop
  erosionCoefficient : Prop
  criticalShearStress : Prop
  incisionEquation : Prop

structure StreamPowerIncisedChannelEvidence (S : StreamPowerIncisedChannelPackage) where
  streamPowerLawClosed : S.streamPowerLaw
  erosionCoefficientClosed : S.erosionCoefficient
  criticalShearStressClosed : S.criticalShearStress
  incisionEquationClosed : S.incisionEquation

def StreamPowerIncisedChannelClosed (S : StreamPowerIncisedChannelPackage) : Prop :=
  S.streamPowerLaw ∧ S.erosionCoefficient ∧ S.criticalShearStress ∧ S.incisionEquation

theorem stream_power_incised_channel_closed_from_evidence (S : StreamPowerIncisedChannelPackage) (E : StreamPowerIncisedChannelEvidence S) : StreamPowerIncisedChannelClosed S := by
  exact And.intro E.streamPowerLawClosed (And.intro E.erosionCoefficientClosed (And.intro E.criticalShearStressClosed E.incisionEquationClosed))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse
