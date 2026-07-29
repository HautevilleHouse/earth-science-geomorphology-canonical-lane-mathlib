import EarthScienceGeomorphologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def geomorphologyProjection : Projection GeomorphologyEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem geomorphology_projection_idempotent (x : GeomorphologyEndgameState) :
    geomorphologyProjection.toFun (geomorphologyProjection.toFun x) = geomorphologyProjection.toFun x := by
  exact geomorphologyProjection.idempotent x

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse