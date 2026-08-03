import HautevilleHouse.TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean.CrossedModuleMorphism

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean

structure CrossedModuleCohomology where
  degree : ℕ
  cocycleSpace : Type u
  coboundarySpace : Type u
  cohomologyGroup : Type u
  wellDefined : Prop

structure CrossedModuleCohomologyEvidence (H : CrossedModuleCohomology) where
  degreeFinite : H.degree ∈ ℕ
  cocycleSpaceClosed : Nonempty H.cocycleSpace
  coboundarySpaceClosed : Nonempty H.coboundarySpace
  cohomologyGroupClosed : Nonempty H.cohomologyGroup
  wellDefinedClosed : H.wellDefined

def CrossedModuleCohomologyClosed (H : CrossedModuleCohomology) : Prop :=
  Nonempty H.cocycleSpace ∧ Nonempty H.coboundarySpace ∧ Nonempty H.cohomologyGroup ∧ H.wellDefined

theorem crossed_module_cohomology_closed_from_evidence (H : CrossedModuleCohomology) (E : CrossedModuleCohomologyEvidence H) :
  CrossedModuleCohomologyClosed H := by
  exact And.intro E.cocycleSpaceClosed (And.intro E.coboundarySpaceClosed (And.intro E.cohomologyGroupClosed E.wellDefinedClosed))

end TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean
end HautevilleHouse