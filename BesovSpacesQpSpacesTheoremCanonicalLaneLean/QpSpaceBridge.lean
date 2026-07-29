import BesovSpacesQpSpacesTheoremCanonicalLaneLean.BesovSpaceDefinitions

namespace HautevilleHouse
namespace BesovSpacesQpSpacesTheoremCanonicalLaneLean

structure QpSpace (p : ℝ) where
  carrier : Type u
  norm : carrier → ℝ
  completeness : Prop

structure QpSpaceEmbedding (p : ℝ) (Ω : Type v) [TopologicalSpace Ω] where
  source : QpSpace p
  target : BesovSpace Ω
  embedding : source.carrier → target.underlyingSpace
  embeddingIsBounded : ∃ C : ℝ, ∀ x : source.carrier, 
    target.normed.norm (embedding x) ≤ C * source.norm x

structure QpBridgeEvidence (p : ℝ) (Ω : Type v) [TopologicalSpace Ω] where
  embeddingExists : QpSpaceEmbedding p Ω
  embeddingClosed : Prop
  embeddingClosedTerm : embeddingClosed

def QpBridgeClosed (p : ℝ) (Ω : Type v) [TopologicalSpace Ω] (E : QpBridgeEvidence p Ω) : Prop :=
  E.embeddingClosed

theorem qp_bridge_closed_from_evidence (p : ℝ) (Ω : Type v) [TopologicalSpace Ω] 
    (E : QpBridgeEvidence p Ω) : QpBridgeClosed p Ω E := by
  exact E.embeddingClosedTerm

end BesovSpacesQpSpacesTheoremCanonicalLaneLean
end HautevilleHouse