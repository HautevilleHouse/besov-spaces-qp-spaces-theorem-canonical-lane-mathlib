import BesovSpacesQpSpacesTheoremCanonicalLaneLean.BesovSpaceDefinitions

namespace HautevilleHouse
namespace BesovSpacesQpSpacesTheoremCanonicalLaneLean

structure BesovAdmittedObject where
  functionSpace : Type u
  normStructure : Prop
  embeddingProperty : Prop
  conclusion : embeddingProperty

structure AdmissibleClass where
  object : BesovAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BesovWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BesovSpacesQpSpacesTheoremCanonicalLaneLean
end HautevilleHouse