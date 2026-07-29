import canonicalLaneMathlib.AdmissibleClass
import BesovSpacesQpSpacesTheoremCanonicalLaneLean.BesovSpaceDefinition
import BesovSpacesQpSpacesTheoremCanonicalLaneLean.QpSpaceEmbedding

namespace HautevilleHouse
namespace BesovSpacesQpSpacesTheoremCanonicalLaneLean

def ConstrainedBesovQpClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_besov_qp_endgame (A : AdmissibleClass) :
    ConstrainedBesovQpClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BesovSpacesQpSpacesTheoremCanonicalLaneLean
end HautevilleHouse