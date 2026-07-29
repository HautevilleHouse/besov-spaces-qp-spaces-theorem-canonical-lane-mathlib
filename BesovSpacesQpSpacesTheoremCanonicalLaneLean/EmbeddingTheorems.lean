import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BesovSpacesQpSpacesTheoremCanonicalLaneLean.BesovSpacePackage
import HautevilleHouse.BesovSpacesQpSpacesTheoremCanonicalLaneLean.QpSpacePackage

namespace HautevilleHouse
namespace BesovSpacesQpSpacesTheoremCanonicalLaneLean

structure EmbeddingTheoremsPackage (B : BesovSpacePackage) (Q : QpSpacePackage) where
  besovToQpEmbedding : Prop
  hopfLionEmbedding : Prop
  criticalEmbedding : Prop
  traceEmbedding : Prop

structure EmbeddingTheoremsEvidence {B : BesovSpacePackage} {Q : QpSpacePackage}
    (E : EmbeddingTheoremsPackage B Q) where
  besovToQpEmbeddingClosed : E.besovToQpEmbedding
  hopfLionEmbeddingClosed : E.hopfLionEmbedding
  criticalEmbeddingClosed : E.criticalEmbedding
  traceEmbeddingClosed : E.traceEmbedding

def EmbeddingTheoremsClosed {B : BesovSpacePackage} {Q : QpSpacePackage}
    (E : EmbeddingTheoremsPackage B Q) : Prop :=
  E.besovToQpEmbedding ∧ E.hopfLionEmbedding ∧ E.criticalEmbedding ∧ E.traceEmbedding

theorem embedding_theorems_closed_from_evidence
    {B : BesovSpacePackage} {Q : QpSpacePackage}
    (E : EmbeddingTheoremsPackage B Q) (Ev : EmbeddingTheoremsEvidence E) :
    EmbeddingTheoremsClosed E := by
  exact And.intro Ev.besovToQpEmbeddingClosed
    (And.intro Ev.hopfLionEmbeddingClosed
      (And.intro Ev.criticalEmbeddingClosed Ev.traceEmbeddingClosed))

end BesovSpacesQpSpacesTheoremCanonicalLaneLean
end HautevilleHouse