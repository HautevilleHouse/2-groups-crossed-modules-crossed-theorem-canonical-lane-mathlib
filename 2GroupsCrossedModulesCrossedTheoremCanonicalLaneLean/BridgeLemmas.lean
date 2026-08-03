import HautevilleHouse.TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CrossedModuleWitnessClosed A.object

def CrossedModuleWitnessClosed (O : CrossedModuleAdmittedObject) : Prop :=
  O.wellDefined

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.conclusion

end TwoGroupsCrossedModulesCrossedTheoremCanonicalLaneLean
end HautevilleHouse