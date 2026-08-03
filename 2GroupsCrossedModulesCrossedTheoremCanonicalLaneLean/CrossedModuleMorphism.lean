import HautevilleHouse.TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean.CrossedModuleBasics

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean

structure CrossedModuleMorphism (A B : CrossedModuleObject) where
  groupHom : A.group → B.group
  moduleHom : A.module → B.module
  compatibility_action : ∀ (g : A.group) (m : A.module),
    moduleHom (A.action g m) = B.action (groupHom g) (moduleHom m)
  compatibility_boundary : ∀ (m : A.module),
    groupHom (A.boundary m) = B.boundary (moduleHom m)

structure CrossedModuleMorphismEvidence {A B : CrossedModuleObject} (f : CrossedModuleMorphism A B) where
  groupHomClosed : True
  moduleHomClosed : True
  compatibility_actionClosed : f.compatibility_action
  compatibility_boundaryClosed : f.compatibility_boundary

def CrossedModuleMorphismClosed {A B : CrossedModuleObject} (f : CrossedModuleMorphism A B) : Prop :=
  f.compatibility_action ∧ f.compatibility_boundary

theorem crossed_module_morphism_closed_from_evidence {A B : CrossedModuleObject} (f : CrossedModuleMorphism A B)
  (E : CrossedModuleMorphismEvidence f) : CrossedModuleMorphismClosed f := by
  exact And.intro E.compatibility_actionClosed E.compatibility_boundaryClosed

end TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean
end HautevilleHouse