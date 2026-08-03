import HautevilleHouse.TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean
end HautevilleHouse