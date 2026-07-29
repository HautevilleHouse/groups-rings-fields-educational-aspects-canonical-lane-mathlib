import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

def ConstrainedGroupsRingsFieldsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_groups_rings_fields_endgame (A : AdmissibleClass) :
    ConstrainedGroupsRingsFieldsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse
