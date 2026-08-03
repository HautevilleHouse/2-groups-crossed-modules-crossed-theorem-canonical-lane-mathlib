import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean

structure CrossedModuleObject where
  group : Type u
  module : Type v
  action : group → module → module
  boundary : module → group
  compatibility : ∀ (g : group) (m : module), boundary (action g m) = g * boundary m * g⁻¹
  peiffer : ∀ (m n : module), action (boundary m) n = m * n * m⁻¹

structure CrossedModuleAdmittedObject where
  cm : CrossedModuleObject
  wellDefined : Prop
  conclusion : wellDefined

structure AdmissibleClass where
  object : CrossedModuleAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CrossedModuleWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean
end HautevilleHouse