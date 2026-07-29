import canonicalLaneMathlib.AdmissibleClass
import canonicalLaneMathlib.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyCellSenescenceLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SenescenceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyCellSenescenceLemmaCanonicalLaneLean
end HautevilleHouse
