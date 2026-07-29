import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure FieldPackage where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  additiveGroup : RingPackage
  multiplicativeGroup : ∀ (a : carrier), a ≠ zero → ∃ b : carrier, multiplication a b = one ∧ multiplication b a = one
  nonzeroInverseDefined : Prop

structure FieldEvidence (F : FieldPackage) where
  additiveGroupClosed : RingClosed F.additiveGroup
  multiplicativeGroupClosed : F.nonzeroInverseDefined

def FieldClosed (F : FieldPackage) : Prop :=
  RingClosed F.additiveGroup ∧ F.nonzeroInverseDefined

theorem field_closed_from_evidence (F : FieldPackage) (E : FieldEvidence F) : FieldClosed F := by
  exact And.intro E.additiveGroupClosed E.multiplicativeGroupClosed

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse
