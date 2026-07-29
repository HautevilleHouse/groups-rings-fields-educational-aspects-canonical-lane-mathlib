import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure PolynomialRingPackage (R : RingPackage) where
  polynomialType : Type u
  addition : polynomialType → polynomialType → polynomialType
  multiplication : polynomialType → polynomialType → polynomialType
  zero : polynomialType
  one : polynomialType
  degree : polynomialType → ℕ
  evaluation : (R.carrier → polynomialType) → R.carrier → R.carrier
  ringAxiomsIdentified : Prop
  universalProperty : Prop

structure PolynomialRingEvidence {R : RingPackage} (P : PolynomialRingPackage R) where
  ringAxiomsIdentifiedClosed : P.ringAxiomsIdentified
  universalPropertyClosed : P.universalProperty

def PolynomialRingClosed {R : RingPackage} (P : PolynomialRingPackage R) : Prop :=
  P.ringAxiomsIdentified ∧ P.universalProperty

theorem polynomial_ring_closed_from_evidence {R : RingPackage} (P : PolynomialRingPackage R) (E : PolynomialRingEvidence P) : PolynomialRingClosed P := by
  exact And.intro E.ringAxiomsIdentifiedClosed E.universalPropertyClosed

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse
