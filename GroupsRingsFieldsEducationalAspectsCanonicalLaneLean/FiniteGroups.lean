import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure FiniteGroupPackage where
  groupOrder : ℕ
  sylowTheorems : Prop
  classificationSmallGroups : Prop

structure FiniteGroupEvidence (G : FiniteGroupPackage) where
  sylowTheoremsClosed : G.sylowTheorems
  classificationSmallGroupsClosed : G.classificationSmallGroups

def FiniteGroupClosed (G : FiniteGroupPackage) : Prop :=
  G.sylowTheorems ∧ G.classificationSmallGroups

theorem finite_group_closed_from_evidence (G : FiniteGroupPackage)
    (E : FiniteGroupEvidence G) : FiniteGroupClosed G := by
  exact And.intro E.sylowTheoremsClosed E.classificationSmallGroupsClosed

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse