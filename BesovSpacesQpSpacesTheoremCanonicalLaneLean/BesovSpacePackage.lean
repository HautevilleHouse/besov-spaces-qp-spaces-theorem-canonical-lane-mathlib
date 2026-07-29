import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesTheoremCanonicalLaneLean

structure BesovSpacePackage where
  smoothnessIndex : ℝ
  integrabilityIndex : ℝ
  domainDimension : ℕ
  spaceType : String
  embeddingProperties : Prop
  interpolationProperties : Prop

structure BesovSpaceEvidence (B : BesovSpacePackage) where
  smoothnessIndexClosed : B.smoothnessIndex > 0
  integrabilityIndexClosed : B.integrabilityIndex > 0
  embeddingPropertiesClosed : B.embeddingProperties
  interpolationPropertiesClosed : B.interpolationProperties

def BesovSpaceClosed (B : BesovSpacePackage) : Prop :=
  B.smoothnessIndex > 0 ∧ B.integrabilityIndex > 0 ∧ B.embeddingProperties ∧ B.interpolationProperties

theorem besov_space_closed_from_evidence (B : BesovSpacePackage) (E : BesovSpaceEvidence B) :
    BesovSpaceClosed B := by
  exact And.intro E.smoothnessIndexClosed
    (And.intro E.integrabilityIndexClosed
      (And.intro E.embeddingPropertiesClosed E.interpolationPropertiesClosed))

end BesovSpacesQpSpacesTheoremCanonicalLaneLean
end HautevilleHouse