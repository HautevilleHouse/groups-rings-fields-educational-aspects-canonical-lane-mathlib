import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GroupsRingsFieldsEducationalAspectsCanonicalLaneLean.GroupAxioms
import HautevilleHouse.GroupsRingsFieldsEducationalAspectsCanonicalLaneLean.RingAxioms
import HautevilleHouse.GroupsRingsFieldsEducationalAspectsCanonicalLaneLean.FieldAxioms
import HautevilleHouse.GroupsRingsFieldsEducationalAspectsCanonicalLaneLean.HomomorphismIdeals

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure FundamentalTheoremPackage where
  lagrangeTheorem : Prop
  firstIsomorphismTheorem : Prop
  fundamentalTheoremRingHomomorphisms : Prop

structure FundamentalTheoremEvidence (F : FundamentalTheoremPackage) where
  lagrangeTheoremClosed : F.lagrangeTheorem
  firstIsomorphismTheoremClosed : F.firstIsomorphismTheorem
  fundamentalTheoremRingHomomorphismsClosed : F.fundamentalTheoremRingHomomorphisms

def FundamentalTheoremClosed (F : FundamentalTheoremPackage) : Prop :=
  F.lagrangeTheorem ∧ F.firstIsomorphismTheorem ∧ F.fundamentalTheoremRingHomomorphisms

theorem fundamental_theorem_closed_from_evidence (F : FundamentalTheoremPackage) (E : FundamentalTheoremEvidence F) :
    FundamentalTheoremClosed F := by
  exact And.intro E.lagrangeTheoremClosed
    (And.intro E.firstIsomorphismTheoremClosed E.fundamentalTheoremRingHomomorphismsClosed)

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse