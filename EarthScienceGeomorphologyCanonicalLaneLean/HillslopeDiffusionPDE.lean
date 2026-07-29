import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure HillslopeDiffusionPDEPackage where
  timeParameter : Type u
  slopeAt : timeParameter → Type v
  initialSlope : Prop
  diffusiveFluxEquation : Prop
  sedimentTransportLaw : Prop
  diffusivityField : Prop
  boundaryConditions : Prop

structure HillslopeDiffusionPDEEvidence (H : HillslopeDiffusionPDEPackage) where
  initialSlopeClosed : H.initialSlope
  diffusiveFluxEquationClosed : H.diffusiveFluxEquation
  sedimentTransportLawClosed : H.sedimentTransportLaw
  diffusivityFieldClosed : H.diffusivityField
  boundaryConditionsClosed : H.boundaryConditions

def HillslopeDiffusionPDEClosed (H : HillslopeDiffusionPDEPackage) : Prop :=
  H.initialSlope ∧ H.diffusiveFluxEquation ∧ H.sedimentTransportLaw ∧ H.diffusivityField ∧ H.boundaryConditions

theorem hillslope_diffusion_pde_closed_from_evidence (H : HillslopeDiffusionPDEPackage) (E : HillslopeDiffusionPDEEvidence H) : HillslopeDiffusionPDEClosed H := by
  exact And.intro E.initialSlopeClosed (And.intro E.diffusiveFluxEquationClosed (And.intro E.sedimentTransportLawClosed (And.intro E.diffusivityFieldClosed E.boundaryConditionsClosed)))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse
