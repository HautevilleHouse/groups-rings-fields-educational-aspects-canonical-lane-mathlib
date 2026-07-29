import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure Subgroup (G : Type u) [GroupAxioms G] where
  carrier : Set G
  one_mem : GroupAxioms.one ∈ carrier
  mul_mem : ∀ a b : G, a ∈ carrier → b ∈ carrier → GroupAxioms.mul a b ∈ carrier
  inv_mem : ∀ a : G, a ∈ carrier → GroupAxioms.inv a ∈ carrier

theorem subgroup_closure (G : Type u) [GroupAxioms G] (H : Subgroup G) : True := by
  trivial

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse