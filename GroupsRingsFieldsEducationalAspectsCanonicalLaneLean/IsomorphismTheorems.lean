import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure IsomorphismTheoremPackage (G : GroupPackage) where
  normalSubgroup : Set G.carrier
  quotientGroup : GroupPackage
  projectionHomomorphism : G.carrier → quotientGroup.carrier
  kernelIsNormal : ∀ a : G.carrier, a ∈ normalSubgroup → projectionHomomorphism a = quotientGroup.identity
  firstIsomorphismTheoremStatement : Prop
  secondIsomorphismTheoremStatement : Prop
  thirdIsomorphismTheoremStatement : Prop

structure IsomorphismTheoremEvidence {G : GroupPackage} (I : IsomorphismTheoremPackage G) where
  firstClosed : I.firstIsomorphismTheoremStatement
  secondClosed : I.secondIsomorphismTheoremStatement
  thirdClosed : I.thirdIsomorphismTheoremStatement

def IsomorphismTheoremClosed {G : GroupPackage} (I : IsomorphismTheoremPackage G) : Prop :=
  I.firstIsomorphismTheoremStatement ∧ I.secondIsomorphismTheoremStatement ∧ I.thirdIsomorphismTheoremStatement

theorem isomorphism_theorem_closed_from_evidence {G : GroupPackage} (I : IsomorphismTheoremPackage G) (E : IsomorphismTheoremEvidence I) : IsomorphismTheoremClosed I := by
  exact And.intro E.firstClosed (And.intro E.secondClosed E.thirdClosed)

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse
