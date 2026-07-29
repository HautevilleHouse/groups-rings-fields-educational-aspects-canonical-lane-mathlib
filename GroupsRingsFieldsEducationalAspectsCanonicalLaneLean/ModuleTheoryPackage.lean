import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure ModulePackage (R : RingPackage) where
  carrier : Type u
  addition : carrier → carrier → carrier
  zero : carrier
  additiveGroup : GroupPackage
  scalarMultiplication : R.carrier → carrier → carrier
  distributivityScalarAdd : ∀ (r s : R.carrier) (m : carrier), scalarMultiplication (R.addition r s) m = addition (scalarMultiplication r m) (scalarMultiplication s m)
  distributivityModuleAdd : ∀ (r : R.carrier) (m n : carrier), scalarMultiplication r (addition m n) = addition (scalarMultiplication r m) (scalarMultiplication r n)
  associativityScalarMult : ∀ (r s : R.carrier) (m : carrier), scalarMultiplication (R.multiplication r s) m = scalarMultiplication r (scalarMultiplication s m)
  identityScalar : ∀ (m : carrier), scalarMultiplication R.one m = m

structure ModuleEvidence {R : RingPackage} (M : ModulePackage R) where
  additiveGroupClosed : GroupClosed M.additiveGroup
  distributivityScalarAddClosed : M.distributivityScalarAdd
  distributivityModuleAddClosed : M.distributivityModuleAdd
  associativityScalarMultClosed : M.associativityScalarMult
  identityScalarClosed : M.identityScalar

def ModuleClosed {R : RingPackage} (M : ModulePackage R) : Prop :=
  GroupClosed M.additiveGroup ∧ M.distributivityScalarAdd ∧ M.distributivityModuleAdd ∧ M.associativityScalarMult ∧ M.identityScalar

theorem module_closed_from_evidence {R : RingPackage} (M : ModulePackage R) (E : ModuleEvidence M) : ModuleClosed M := by
  refine And.intro E.additiveGroupClosed (And.intro E.distributivityScalarAddClosed
    (And.intro E.distributivityModuleAddClosed (And.intro E.associativityScalarMultClosed E.identityScalarClosed)))

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse
