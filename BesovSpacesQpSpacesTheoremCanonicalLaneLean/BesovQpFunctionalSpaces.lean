import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BesovSpacesQpSpacesTheoremCanonicalLaneLean

structure BesovSpacePackage where
  p : ℝ
  q : ℝ
  s : ℝ
  domain : Type u
  topology : TopologicalSpace domain
  measure : MeasureTheory.Measure domain
  normDefined : Prop
  embeddingProperties : Prop

default instance : Inhabited BesovSpacePackage := 
  { p := 2, q := 2, s := 0, domain := Unit, topology := inferInstance, measure := inferInstance, normDefined := True, embeddingProperties := True }

structure QpSpacePackage where
  p : ℝ
  domain : Type u
  topology : TopologicalSpace domain
  measure : MeasureTheory.Measure domain
  normDefined : Prop
  embeddingProperties : Prop

default instance : Inhabited QpSpacePackage := 
  { p := 2, domain := Unit, topology := inferInstance, measure := inferInstance, normDefined := True, embeddingProperties := True }

end BesovSpacesQpSpacesTheoremCanonicalLaneLean
end HautevilleHouse