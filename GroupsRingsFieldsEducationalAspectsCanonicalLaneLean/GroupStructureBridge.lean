import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure GroupStructurePackage where
  carrierSet : Type u
  binaryOperation : carrierSet → carrierSet → carrierSet
  identityElement : carrierSet
  inverseMap : carrierSet → carrierSet
  associativity : Prop
  identityLeft : Prop
  identityRight : Prop
  inverseLeft : Prop
  inverseRight : Prop
  groupAxiomsClosed : associativity ∧ identityLeft ∧ identityRight ∧ inverseLeft ∧ inverseRight

structure GroupStructureEvidence (G : GroupStructurePackage) where
  associativityClosed : G.associativity
  identityLeftClosed : G.identityLeft
  identityRightClosed : G.identityRight
  inverseLeftClosed : G.inverseLeft
  inverseRightClosed : G.inverseRight

def GroupStructureClosed (G : GroupStructurePackage) : Prop :=
  G.associativity ∧ G.identityLeft ∧ G.identityRight ∧ G.inverseLeft ∧ G.inverseRight

theorem group_structure_closed_from_evidence (G : GroupStructurePackage)
    (E : GroupStructureEvidence G) : GroupStructureClosed G := by
  exact And.intro E.associativityClosed
    (And.intro E.identityLeftClosed
      (And.intro E.identityRightClosed
        (And.intro E.inverseLeftClosed E.inverseRightClosed)))

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse
