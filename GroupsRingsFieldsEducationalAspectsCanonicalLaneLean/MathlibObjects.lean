import GroupsRingsFieldsEducationalAspectsCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure EducationalSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EducationalObject where
  space : EducationalSpace
  groupAxiomsSatisfied : Prop
  ringAxiomsSatisfied : Prop
  fieldAxiomsSatisfied : Prop
  fieldModel : Type
  fieldTopology : TopologicalSpace fieldModel
  isomorphicToField : Prop
  conclusion : isomorphicToField

structure EducationalEndgameState where
  object : EducationalObject

def EducationalWitnessClosed (O : EducationalObject) : Prop :=
  O.isomorphicToField

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse