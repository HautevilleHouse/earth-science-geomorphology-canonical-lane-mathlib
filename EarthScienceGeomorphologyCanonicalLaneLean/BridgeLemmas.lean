import EarthScienceGeomorphologyCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GeomorphologyWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse