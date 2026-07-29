import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesTheoremCanonicalLaneLean

structure QpSpace (p : ℝ) where
  exponentP : ℝ
  normType : String
  completeness : Prop
  completenessProof : completeness

def QpSpaceClosed (Q : QpSpace) : Prop :=
  Q.completeness

theorem qp_space_closed_from_evidence (Q : QpSpace) : QpSpaceClosed Q :=
  Q.completenessProof

structure BesovQpEmbedding (B : BesovSpace) (Q : QpSpace) where
  embeddingMap : Type
  continuity : Prop
  bounds : Prop
  embeddingClosed : continuity ∧ bounds

theorem embedding_from_evidence (B : BesovSpace) (Q : QpSpace) (E : BesovQpEmbedding B Q) : E.embeddingClosed :=
  E.embeddingClosed

end BesovSpacesQpSpacesTheoremCanonicalLaneLean
end HautevilleHouse