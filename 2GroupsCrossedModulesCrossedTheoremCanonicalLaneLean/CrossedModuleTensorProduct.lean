import HautevilleHouse.TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean.CrossedModuleCohomology

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean

structure CrossedModuleTensorProduct (A B : CrossedModuleObject) where
  baseGroup : A.group × B.group
  module : A.module ⊗ B.module
  action : baseGroup → module → module
  boundary : module → baseGroup
  wellDefined : Prop

structure CrossedModuleTensorProductEvidence {A B : CrossedModuleObject} (T : CrossedModuleTensorProduct A B) where
  baseGroupClosed : Nonempty T.baseGroup
  moduleClosed : Nonempty T.module
  actionClosed : T.action ≠ ∅
  boundaryClosed : T.boundary ≠ ∅
  wellDefinedClosed : T.wellDefined

def CrossedModuleTensorProductClosed {A B : CrossedModuleObject} (T : CrossedModuleTensorProduct A B) : Prop :=
  Nonempty T.baseGroup ∧ Nonempty T.module ∧ T.action ≠ ∅ ∧ T.boundary ≠ ∅ ∧ T.wellDefined

theorem crossed_module_tensor_product_closed_from_evidence {A B : CrossedModuleObject} (T : CrossedModuleTensorProduct A B)
  (E : CrossedModuleTensorProductEvidence T) : CrossedModuleTensorProductClosed T := by
  exact And.intro E.baseGroupClosed (And.intro E.moduleClosed (And.intro E.actionClosed (And.intro E.boundaryClosed E.wellDefinedClosed)))

end TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean
end HautevilleHouse