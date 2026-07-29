import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BesovSpacesQpSpacesTheoremCanonicalLaneLean.BesovSpacePackage
import HautevilleHouse.BesovSpacesQpSpacesTheoremCanonicalLaneLean.QpSpacePackage

namespace HautevilleHouse
namespace BesovSpacesQpSpacesTheoremCanonicalLaneLean

structure InterpolationTheoryPackage (B : BesovSpacePackage) (Q : QpSpacePackage) where
  realInterpolation : Prop
  complexInterpolation : Prop
  reiterationTheorem : Prop
  sharpConstants : Prop

structure InterpolationTheoryEvidence {B : BesovSpacePackage} {Q : QpSpacePackage}
    (I : InterpolationTheoryPackage B Q) where
  realInterpolationClosed : I.realInterpolation
  complexInterpolationClosed : I.complexInterpolation
  reiterationTheoremClosed : I.reiterationTheorem
  sharpConstantsClosed : I.sharpConstants

def InterpolationTheoryClosed {B : BesovSpacePackage} {Q : QpSpacePackage}
    (I : InterpolationTheoryPackage B Q) : Prop :=
  I.realInterpolation ∧ I.complexInterpolation ∧ I.reiterationTheorem ∧ I.sharpConstants

theorem interpolation_theory_closed_from_evidence
    {B : BesovSpacePackage} {Q : QpSpacePackage}
    (I : InterpolationTheoryPackage B Q) (Ev : InterpolationTheoryEvidence I) :
    InterpolationTheoryClosed I := by
  exact And.intro Ev.realInterpolationClosed
    (And.intro Ev.complexInterpolationClosed
      (And.intro Ev.reiterationTheoremClosed Ev.sharpConstantsClosed))

end BesovSpacesQpSpacesTheoremCanonicalLaneLean
end HautevilleHouse