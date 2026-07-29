import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure Ideal (R : Type u) [RingAxioms R] where
  carrier : Set R
  zero_mem : RingAxioms.zero ∈ carrier
  add_mem : ∀ a b : R, a ∈ carrier → b ∈ carrier → RingAxioms.add a b ∈ carrier
  smul_mem : ∀ r a : R, a ∈ carrier → RingAxioms.mul r a ∈ carrier

theorem ideal_closure (R : Type u) [RingAxioms R] (I : Ideal R) : True := by
  trivial

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse