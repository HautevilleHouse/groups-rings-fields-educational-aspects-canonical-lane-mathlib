import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure GroupAxiomsPackage where
  closure : Prop
  associativity : Prop
  identity : Prop
  inverses : Prop

structure GroupAxiomsEvidence (G : GroupAxiomsPackage) where
  closureClosed : G.closure
  associativityClosed : G.associativity
  identityClosed : G.identity
  inversesClosed : G.inverses

def GroupAxiomsClosed (G : GroupAxiomsPackage) : Prop :=
  G.closure ∧ G.associativity ∧ G.identity ∧ G.inverses

theorem group_axioms_closed_from_evidence (G : GroupAxiomsPackage) (E : GroupAxiomsEvidence G) :
    GroupAxiomsClosed G := by
  exact And.intro E.closureClosed
    (And.intro E.associativityClosed
      (And.intro E.identityClosed E.inversesClosed))

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse