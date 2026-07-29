import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean

structure NanoscaleTransportPackage where
  diffusionCoefficient : Float
  knudsenNumber : Float
  confinementEffect : Prop
  surfaceDiffusion : Prop
  poreMorphology : Prop

structure NanoscaleTransportEvidence (N : NanoscaleTransportPackage) where
  diffusionCoefficientClosed : N.diffusionCoefficient > 0
  confinementEffectClosed : N.confinementEffect
  surfaceDiffusionClosed : N.surfaceDiffusion
  poreMorphologyClosed : N.poreMorphology

def NanoscaleTransportClosed (N : NanoscaleTransportPackage) : Prop :=
  (N.diffusionCoefficient > 0) ∧ N.confinementEffect ∧ N.surfaceDiffusion ∧ N.poreMorphology

theorem nanoscale_transport_closed_from_evidence (N : NanoscaleTransportPackage)
    (E : NanoscaleTransportEvidence N) : NanoscaleTransportClosed N := by
  exact And.intro E.diffusionCoefficientClosed
    (And.intro E.confinementEffectClosed
      (And.intro E.surfaceDiffusionClosed E.poreMorphologyClosed))

end ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean
end HautevilleHouse