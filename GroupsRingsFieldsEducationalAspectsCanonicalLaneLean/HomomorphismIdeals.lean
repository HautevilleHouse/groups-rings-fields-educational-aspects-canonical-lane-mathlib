import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure HomomorphismPackage where
  preservesOperation : Prop
  kernelDefined : Prop
  imageDefined : Prop

structure HomomorphismEvidence (H : HomomorphismPackage) where
  preservesOperationClosed : H.preservesOperation
  kernelDefinedClosed : H.kernelDefined
  imageDefinedClosed : H.imageDefined

def HomomorphismClosed (H : HomomorphismPackage) : Prop :=
  H.preservesOperation ∧ H.kernelDefined ∧ H.imageDefined

theorem homomorphism_closed_from_evidence (H : HomomorphismPackage) (E : HomomorphismEvidence H) :
    HomomorphismClosed H := by
  exact And.intro E.preservesOperationClosed
    (And.intro E.kernelDefinedClosed E.imageDefinedClosed)

structure IdealPackage where
  additiveSubgroup : Prop
  absorbsMultiplication : Prop

structure IdealEvidence (I : IdealPackage) where
  additiveSubgroupClosed : I.additiveSubgroup
  absorbsMultiplicationClosed : I.absorbsMultiplication

def IdealClosed (I : IdealPackage) : Prop :=
  I.additiveSubgroup ∧ I.absorbsMultiplication

theorem ideal_closed_from_evidence (I : IdealPackage) (E : IdealEvidence I) :
    IdealClosed I := by
  exact And.intro E.additiveSubgroupClosed E.absorbsMultiplicationClosed

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse