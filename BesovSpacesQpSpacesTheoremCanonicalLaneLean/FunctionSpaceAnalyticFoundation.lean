import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BesovSpacesQpSpacesTheoremCanonicalLaneLean.BesovSpacePackage
import HautevilleHouse.BesovSpacesQpSpacesTheoremCanonicalLaneLean.QpSpacePackage
import HautevilleHouse.BesovSpacesQpSpacesTheoremCanonicalLaneLean.EmbeddingTheorems
import HautevilleHouse.BesovSpacesQpSpacesTheoremCanonicalLaneLean.InterpolationTheory

namespace HautevilleHouse
namespace BesovSpacesQpSpacesTheoremCanonicalLaneLean

structure FunctionSpaceAnalyticFoundation where
  besov : BesovSpacePackage
  besovEvidence : BesovSpaceEvidence besov
  qp : QpSpacePackage
  qpEvidence : QpSpaceEvidence qp
  embedding : EmbeddingTheoremsPackage besov qp
  embeddingEvidence : EmbeddingTheoremsEvidence embedding
  interpolation : InterpolationTheoryPackage besov qp
  interpolationEvidence : InterpolationTheoryEvidence interpolation

def FunctionSpaceAnalyticFoundationClosed (F : FunctionSpaceAnalyticFoundation) : Prop :=
  BesovSpaceClosed F.besov ∧ QpSpaceClosed F.qp ∧
  EmbeddingTheoremsClosed F.embedding ∧ InterpolationTheoryClosed F.interpolation

theorem function_space_analytic_foundation_closed_from_evidence
    (F : FunctionSpaceAnalyticFoundation) : FunctionSpaceAnalyticFoundationClosed F := by
  exact And.intro (besov_space_closed_from_evidence F.besov F.besovEvidence)
    (And.intro (qp_space_closed_from_evidence F.qp F.qpEvidence)
      (And.intro (embedding_theorems_closed_from_evidence F.embedding F.embeddingEvidence)
        (interpolation_theory_closed_from_evidence F.interpolation F.interpolationEvidence)))

end BesovSpacesQpSpacesTheoremCanonicalLaneLean
end HautevilleHouse