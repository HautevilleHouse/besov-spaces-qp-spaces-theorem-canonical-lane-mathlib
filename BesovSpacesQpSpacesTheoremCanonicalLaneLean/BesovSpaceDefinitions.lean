import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesTheoremCanonicalLaneLean

structure BesovSpace (α : Type u) [NormedAddCommGroup α] where
  smoothness : ℝ
  integrability : ℝ
  norm : α → ℝ
  normedSpace : NormedAddCommGroup α

structure QpSpace (α : Type u) [NormedAddCommGroup α] where
  exponent : ℝ
  carlesonMeasure : Bool
  norm : α → ℝ
  normedSpace : NormedAddCommGroup α

def BesovQpWitnessClosed (O : BesovQpAdmittedObject) : Prop :=
  O.embeddingExists

end BesovSpacesQpSpacesTheoremCanonicalLaneLean
end HautevilleHouse