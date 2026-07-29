import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BesovSpacesQpSpacesTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace BesovSpacesQpSpacesTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end BesovSpacesQpSpacesTheoremCanonicalLaneLean
end HautevilleHouse