import EarthScienceGeomorphologyCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GeomorphologySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GeomorphologyAdmittedObject where
  space : GeomorphologySpace
  denudationSystem : Prop
  transportNetwork : Prop
  model : Type
  modelTopology : TopologicalSpace model
  geomorphicSystemValid : Prop
  conclusion : geomorphicSystemValid

structure GeomorphologyEndgameState where
  object : GeomorphologyAdmittedObject

def GeomorphologyWitnessClosed (O : GeomorphologyAdmittedObject) : Prop :=
  O.geomorphicSystemValid

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse