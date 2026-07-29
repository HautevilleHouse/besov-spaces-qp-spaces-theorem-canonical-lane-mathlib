import BesovSpacesQpSpacesTheoremCanonicalLaneLean.BesovAdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  BesovWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BesovSpacesQpSpacesTheoremCanonicalLaneLean
end HautevilleHouse