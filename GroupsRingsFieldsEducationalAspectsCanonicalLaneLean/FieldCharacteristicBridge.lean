import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure FieldStructurePackage where
  ring : RingStructurePackage
  multiplicativeInverse : ring.additiveGroup.carrierSet → ring.additiveGroup.carrierSet
  nonzeroElements : Set ring.additiveGroup.carrierSet
  zero : ring.additiveGroup.carrierSet
  multiplicativeInverseClosure : ∀ x : ring.additiveGroup.carrierSet, x ≠ zero →
    ring.multiplication x (multiplicativeInverse x) = ring.multiplicativeIdentity
  multiplicativeInverseClosedWithZero : multiplicativeInverse zero = zero
  fieldAxiomsClosed : 
    (∀ x : ring.additiveGroup.carrierSet, x ≠ zero →
      ring.multiplication x (multiplicativeInverse x) = ring.multiplicativeIdentity) ∧
    (multiplicativeInverse zero = zero)

structure FieldStructureEvidence (F : FieldStructurePackage) where
  multiplicativeInverseClosed : ∀ x : F.ring.additiveGroup.carrierSet, x ≠ F.zero →
    F.ring.multiplication x (F.multiplicativeInverse x) = F.ring.multiplicativeIdentity
  multiplicativeInverseClosedWithZeroTerm : F.multiplicativeInverse F.zero = F.zero

def FieldStructureClosed (F : FieldStructurePackage) : Prop :=
  (∀ x : F.ring.additiveGroup.carrierSet, x ≠ F.zero →
    F.ring.multiplication x (F.multiplicativeInverse x) = F.ring.multiplicativeIdentity) ∧
  (F.multiplicativeInverse F.zero = F.zero)

theorem field_structure_closed_from_evidence (F : FieldStructurePackage)
    (E : FieldStructureEvidence F) : FieldStructureClosed F := by
  exact And.intro E.multiplicativeInverseClosed E.multiplicativeInverseClosedWithZeroTerm

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse
