import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure RingAxiomsPackage where
  additiveAbelianGroup : Prop
  multiplicativeMonoid : Prop
  distributivity : Prop

structure RingAxiomsEvidence (R : RingAxiomsPackage) where
  additiveAbelianGroupClosed : R.additiveAbelianGroup
  multiplicativeMonoidClosed : R.multiplicativeMonoid
  distributivityClosed : R.distributivity

def RingAxiomsClosed (R : RingAxiomsPackage) : Prop :=
  R.additiveAbelianGroup ∧ R.multiplicativeMonoid ∧ R.distributivity

theorem ring_axioms_closed_from_evidence (R : RingAxiomsPackage) (E : RingAxiomsEvidence R) :
    RingAxiomsClosed R := by
  exact And.intro E.additiveAbelianGroupClosed
    (And.intro E.multiplicativeMonoidClosed E.distributivityClosed)

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse