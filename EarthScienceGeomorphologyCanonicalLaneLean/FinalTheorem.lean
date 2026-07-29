import EarthScienceGeomorphologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

def ConstrainedGeomorphologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geomorphology_endgame (A : AdmissibleClass) :
    ConstrainedGeomorphologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse