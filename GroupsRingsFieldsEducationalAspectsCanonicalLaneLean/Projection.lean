import GroupsRingsFieldsEducationalAspectsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def educationalProjection : Projection EducationalEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem educational_projection_idempotent (x : EducationalEndgameState) :
    educationalProjection.toFun (educationalProjection.toFun x) = educationalProjection.toFun x := by
  exact educationalProjection.idempotent x

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse