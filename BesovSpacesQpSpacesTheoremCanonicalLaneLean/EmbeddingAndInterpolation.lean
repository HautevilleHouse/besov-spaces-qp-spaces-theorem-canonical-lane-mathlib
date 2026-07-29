import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BesovSpacesQpSpacesTheoremCanonicalLaneLean.BesovQpFunctionalSpaces

namespace HautevilleHouse
namespace BesovSpacesQpSpacesTheoremCanonicalLaneLean

structure EmbeddingTheoremPackage (B : BesovSpacePackage) (Q : QpSpacePackage) where
  embeddingExists : Prop
  embeddingContinuous : Prop
  embeddingCompact : Prop

structure EmbeddingTheoremEvidence {B : BesovSpacePackage} {Q : QpSpacePackage} (E : EmbeddingTheoremPackage B Q) where
  embeddingExistsClosed : E.embeddingExists
  embeddingContinuousClosed : E.embeddingContinuous
  embeddingCompactClosed : E.embeddingCompact

def EmbeddingTheoremClosed {B : BesovSpacePackage} {Q : QpSpacePackage} (E : EmbeddingTheoremPackage B Q) : Prop :=
  E.embeddingExists ∧ E.embeddingContinuous ∧ E.embeddingCompact

theorem embedding_theorem_closed_from_evidence {B : BesovSpacePackage} {Q : QpSpacePackage}
    (E : EmbeddingTheoremPackage B Q) (Ev : EmbeddingTheoremEvidence E) : EmbeddingTheoremClosed E :=
  And.intro Ev.embeddingExistsClosed (And.intro Ev.embeddingContinuousClosed Ev.embeddingCompactClosed)

structure InterpolationInequalitiesPackage (B : BesovSpacePackage) (Q : QpSpacePackage) where
  interpolationInequality : Prop
  optimalConstant : Prop

structure InterpolationInequalitiesEvidence {B : BesovSpacePackage} {Q : QpSpacePackage}
    (I : InterpolationInequalitiesPackage B Q) where
  interpolationInequalityClosed : I.interpolationInequality
  optimalConstantClosed : I.optimalConstant

def InterpolationInequalitiesClosed {B : BesovSpacePackage} {Q : QpSpacePackage}
    (I : InterpolationInequalitiesPackage B Q) : Prop :=
  I.interpolationInequality ∧ I.optimalConstant

theorem interpolation_inequalities_closed_from_evidence {B : BesovSpacePackage} {Q : QpSpacePackage}
    (I : InterpolationInequalitiesPackage B Q) (Ev : InterpolationInequalitiesEvidence I) : InterpolationInequalitiesClosed I :=
  And.intro Ev.interpolationInequalityClosed Ev.optimalConstantClosed

end BesovSpacesQpSpacesTheoremCanonicalLaneLean
end HautevilleHouse