import EarthScienceGeomorphologyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure AdmissibleClass where
  object : GeomorphologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeomorphologyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse