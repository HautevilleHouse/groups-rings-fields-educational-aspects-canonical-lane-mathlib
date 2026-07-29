import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure RingPackage where
  carrier : Type u
  addition : carrier → carrier → carrier
  multiplication : carrier → carrier → carrier
  zero : carrier
  one : carrier
  additiveAssociativity : ∀ a b c : carrier, addition (addition a b) c = addition a (addition b c)
  additiveIdentity : ∀ a : carrier, addition zero a = a
  additiveInverse : ∀ a : carrier, ∃ b : carrier, addition a b = zero ∧ addition b a = zero
  additiveCommutativity : ∀ a b : carrier, addition a b = addition b a
  multiplicativeAssociativity : ∀ a b c : carrier, multiplication (multiplication a b) c = multiplication a (multiplication b c)
  multiplicativeIdentity : ∀ a : carrier, multiplication one a = a ∧ multiplication a one = a
  distributivityLeft : ∀ a b c : carrier, multiplication a (addition b c) = addition (multiplication a b) (multiplication a c)
  distributivityRight : ∀ a b c : carrier, multiplication (addition a b) c = addition (multiplication a c) (multiplication b c)

structure RingEvidence (R : RingPackage) where
  additiveAssociativityClosed : R.additiveAssociativity
  additiveIdentityClosed : R.additiveIdentity
  additiveInverseClosed : R.additiveInverse
  additiveCommutativityClosed : R.additiveCommutativity
  multiplicativeAssociativityClosed : R.multiplicativeAssociativity
  multiplicativeIdentityClosed : R.multiplicativeIdentity
  distributivityLeftClosed : R.distributivityLeft
  distributivityRightClosed : R.distributivityRight

def RingClosed (R : RingPackage) : Prop :=
  R.additiveAssociativity ∧ R.additiveIdentity ∧ R.additiveInverse ∧
  R.additiveCommutativity ∧ R.multiplicativeAssociativity ∧
  R.multiplicativeIdentity ∧ R.distributivityLeft ∧ R.distributivityRight

theorem ring_closed_from_evidence (R : RingPackage) (E : RingEvidence R) : RingClosed R := by
  refine And.intro E.additiveAssociativityClosed (And.intro E.additiveIdentityClosed
    (And.intro E.additiveInverseClosed (And.intro E.additiveCommutativityClosed
      (And.intro E.multiplicativeAssociativityClosed (And.intro E.multiplicativeIdentityClosed
        (And.intro E.distributivityLeftClosed E.distributivityRightClosed))))))

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse
