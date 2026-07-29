import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GroupsRingsFieldsEducationalAspectsCanonicalLaneLean

structure FieldExtensionPackage where
  baseField : Type u
  extensionField : Type u
  inclusion : Prop
  degree : ℕ
  algebraic : Prop

def FieldExtensionClosed (E : FieldExtensionPackage) : Prop :=
  E.algebraic

theorem field_extension_closed (E : FieldExtensionPackage) (h : E.algebraic) : FieldExtensionClosed E := h

end GroupsRingsFieldsEducationalAspectsCanonicalLaneLean
end HautevilleHouse