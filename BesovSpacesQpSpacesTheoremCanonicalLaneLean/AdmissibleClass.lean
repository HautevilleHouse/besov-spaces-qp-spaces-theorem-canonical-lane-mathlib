import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : BesovQpAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BesovQpWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BesovSpacesQpSpacesTheoremCanonicalLaneLean
end HautevilleHouse