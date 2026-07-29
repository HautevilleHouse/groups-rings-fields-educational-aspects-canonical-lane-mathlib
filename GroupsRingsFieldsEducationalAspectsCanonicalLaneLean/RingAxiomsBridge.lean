import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure RingStructurePackage where
  additiveGroup : GroupStructurePackage
  multiplication : additiveGroup.carrierSet → additiveGroup.carrierSet → additiveGroup.carrierSet
  distribLeft : Prop
  distribRight : Prop
  multiplicativeAssociativity : Prop
  multiplicativeIdentity : additiveGroup.carrierSet
  multiplicativeIdentityLeft : Prop
  multiplicativeIdentityRight : Prop
  ringAxiomsClosed : distribLeft ∧ distribRight ∧ multiplicativeAssociativity ∧
    multiplicativeIdentityLeft ∧ multiplicativeIdentityRight

structure RingStructureEvidence (R : RingStructurePackage) where
  distribLeftClosed : R.distribLeft
  distribRightClosed : R.distribRight
  multiplicativeAssociativityClosed : R.multiplicativeAssociativity
  multiplicativeIdentityLeftClosed : R.multiplicativeIdentityLeft
  multiplicativeIdentityRightClosed : R.multiplicativeIdentityRight

def RingStructureClosed (R : RingStructurePackage) : Prop :=
  R.distribLeft ∧ R.distribRight ∧ R.multiplicativeAssociativity ∧
  R.multiplicativeIdentityLeft ∧ R.multiplicativeIdentityRight

theorem ring_structure_closed_from_evidence (R : RingStructurePackage)
    (E : RingStructureEvidence R) : RingStructureClosed R := by
  exact And.intro E.distribLeftClosed
    (And.intro E.distribRightClosed
      (And.intro E.multiplicativeAssociativityClosed
        (And.intro E.multiplicativeIdentityLeftClosed
          E.multiplicativeIdentityRightClosed)))

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse
