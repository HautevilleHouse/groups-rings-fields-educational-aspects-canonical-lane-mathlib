import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure PolynomialRingPackage where
  ring : Type u
  variable : String
  degreeFunction : Prop
  euclideanAlgorithm : Prop
  factorization : Prop

structure PolynomialRingEvidence (P : PolynomialRingPackage) where
  degreeFunctionClosed : P.degreeFunction
  euclideanAlgorithmClosed : P.euclideanAlgorithm
  factorizationClosed : P.factorization

def PolynomialRingClosed (P : PolynomialRingPackage) : Prop :=
  P.degreeFunction ∧ P.euclideanAlgorithm ∧ P.factorization

theorem polynomial_ring_closed_from_evidence (P : PolynomialRingPackage)
    (E : PolynomialRingEvidence P) : PolynomialRingClosed P := by
  exact And.intro E.degreeFunctionClosed
    (And.intro E.euclideanAlgorithmClosed E.factorizationClosed)

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse