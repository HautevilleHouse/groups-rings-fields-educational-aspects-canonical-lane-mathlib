import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure FieldAxiomsPackage where
  ringAxioms : RingAxiomsPackage
  multiplicativeInverses : Prop
  nontrivial : Prop

structure FieldAxiomsEvidence (F : FieldAxiomsPackage) where
  ringAxiomsClosed : RingAxiomsClosed F.ringAxioms
  multiplicativeInversesClosed : F.multiplicativeInverses
  nontrivialClosed : F.nontrivial

def FieldAxiomsClosed (F : FieldAxiomsPackage) : Prop :=
  RingAxiomsClosed F.ringAxioms ∧ F.multiplicativeInverses ∧ F.nontrivial

theorem field_axioms_closed_from_evidence (F : FieldAxiomsPackage) (E : FieldAxiomsEvidence F) :
    FieldAxiomsClosed F := by
  exact And.intro E.ringAxiomsClosed
    (And.intro E.multiplicativeInversesClosed E.nontrivialClosed)

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse