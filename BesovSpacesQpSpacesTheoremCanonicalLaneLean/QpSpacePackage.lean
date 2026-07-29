import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesTheoremCanonicalLaneLean

structure QpSpacePackage where
  pIndex : ℝ
  domainDimension : ℕ
  qIndex : ℝ
  dyadicDecompositionProperties : Prop
  martingaleProperties : Prop

structure QpSpaceEvidence (Q : QpSpacePackage) where
  pIndexClosed : Q.pIndex ≥ 1
  qIndexClosed : Q.qIndex ≥ 1
  dyadicDecompositionPropertiesClosed : Q.dyadicDecompositionProperties
  martingalePropertiesClosed : Q.martingaleProperties

def QpSpaceClosed (Q : QpSpacePackage) : Prop :=
  Q.pIndex ≥ 1 ∧ Q.qIndex ≥ 1 ∧ Q.dyadicDecompositionProperties ∧ Q.martingaleProperties

theorem qp_space_closed_from_evidence (Q : QpSpacePackage) (E : QpSpaceEvidence Q) :
    QpSpaceClosed Q := by
  exact And.intro E.pIndexClosed
    (And.intro E.qIndexClosed
      (And.intro E.dyadicDecompositionPropertiesClosed E.martingalePropertiesClosed))

end BesovSpacesQpSpacesTheoremCanonicalLaneLean
end HautevilleHouse