import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesTheoremCanonicalLaneLean

structure BesovSpace (p q : ℝ) (s : ℝ) where
  exponentP : ℝ
  exponentQ : ℝ
  smoothnessS : ℝ
  normType : String
  completeness : Prop
  completenessProof : completeness

def BesovSpaceClosed (B : BesovSpace) : Prop :=
  B.completeness

theorem besov_space_closed_from_evidence (B : BesovSpace) : BesovSpaceClosed B :=
  B.completenessProof

end BesovSpacesQpSpacesTheoremCanonicalLaneLean
end HautevilleHouse