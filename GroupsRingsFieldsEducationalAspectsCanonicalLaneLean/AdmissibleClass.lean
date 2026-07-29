import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure AlgebraicAdmittedObject where
  objectType : String
  axiomsClosed : Prop

structure AdmissibleClass where
  object : AlgebraicAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.axiomsClosed ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse