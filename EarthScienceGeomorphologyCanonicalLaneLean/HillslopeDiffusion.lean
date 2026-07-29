import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure HillslopeDiffusion where
  diffusivity : ℝ
  curvature : ℝ → ℝ
  elevation : ℝ → ℝ
  diffusionEquation : Prop

structure DiffusionEvidence (H : HillslopeDiffusion) where
  diffusivityPositive : H.diffusivity > 0
  solutionExists : Prop
  solutionExistsClosed : solutionExists

def DiffusionClosed (H : HillslopeDiffusion) : Prop :=
  H.diffusionEquation ∧ H.diffusivity > 0

theorem diffusion_closed_from_evidence (H : HillslopeDiffusion) (ev : DiffusionEvidence H) :
    DiffusionClosed H := by
  exact And.intro H.diffusionEquation ev.diffusivityPositive

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse