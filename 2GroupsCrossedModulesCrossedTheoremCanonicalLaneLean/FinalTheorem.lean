import HautevilleHouse.TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean

def ConstrainedCrossedModuleClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_crossed_module_endgame (A : AdmissibleClass) :
    ConstrainedCrossedModuleClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean
end HautevilleHouse