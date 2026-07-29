import GroupsRingsFieldsEducationalAspectsCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EducationalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse