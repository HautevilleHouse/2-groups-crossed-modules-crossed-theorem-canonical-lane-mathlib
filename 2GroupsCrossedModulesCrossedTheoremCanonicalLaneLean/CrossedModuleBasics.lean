import HautevilleHouse.TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean

structure CrossedModuleCategory where
  objects : Set CrossedModuleObject
  morphisms : Prop
  compositionClosed : Prop
  identitiesPresent : Prop

structure CrossedModuleCategoryEvidence (C : CrossedModuleCategory) where
  objectsClosed : C.objects ≠ ∅
  morphismsClosed : C.morphisms
  compositionClosedClosed : C.compositionClosed
  identitiesPresentClosed : C.identitiesPresent

def CrossedModuleCategoryClosed (C : CrossedModuleCategory) : Prop :=
  C.objects ≠ ∅ ∧ C.morphisms ∧ C.compositionClosed ∧ C.identitiesPresent

theorem crossed_module_category_closed_from_evidence (C : CrossedModuleCategory) (E : CrossedModuleCategoryEvidence C) :
  CrossedModuleCategoryClosed C := by
  exact And.intro E.objectsClosed (And.intro E.morphismsClosed (And.intro E.compositionClosedClosed E.identitiesPresentClosed))

end TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean
end HautevilleHouse