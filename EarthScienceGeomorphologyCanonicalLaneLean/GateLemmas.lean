import EarthScienceGeomorphologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse