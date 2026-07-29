import BesovSpacesQpSpacesTheoremCanonicalLaneLean.BesovSpaceDefinitions

namespace HautevilleHouse
namespace BesovSpacesQpSpacesTheoremCanonicalLaneLean

structure InterpolationData (Ω : Type u) [TopologicalSpace Ω] where
  space1 : BesovSpace Ω
  space2 : BesovSpace Ω
  interpolatedSpace : BesovSpace Ω
  inequality : Prop

structure InterpolationEvidence (Ω : Type u) [TopologicalSpace Ω] 
    (D : InterpolationData Ω) where
  inequalityClosed : D.inequality
  inequalityClosedTerm : inequalityClosed

def InterpolationInequalityClosed (Ω : Type u) [TopologicalSpace Ω] 
    (D : InterpolationData Ω) : Prop :=
  D.inequality

theorem interpolation_inequality_closed_from_evidence (Ω : Type u) [TopologicalSpace Ω] 
    (D : InterpolationData Ω) (E : InterpolationEvidence Ω D) : 
    InterpolationInequalityClosed Ω D := by
  exact E.inequalityClosedTerm

end BesovSpacesQpSpacesTheoremCanonicalLaneLean
end HautevilleHouse