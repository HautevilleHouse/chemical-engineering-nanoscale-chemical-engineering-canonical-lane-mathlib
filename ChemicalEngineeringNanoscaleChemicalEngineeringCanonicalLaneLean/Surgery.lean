import chemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean

structure ChemicalSurgeryPackage {A : AdmissibleClass} where
  reactionCutoff : Prop
  catalystRegeneration : Prop
  productSeparation : Prop
  cycleContinuation : Prop

structure ChemicalSurgeryEvidence {A : AdmissibleClass} (U : ChemicalSurgeryPackage A) where
  reactionCutoffClosed : U.reactionCutoff
  catalystRegenerationClosed : U.catalystRegeneration
  productSeparationClosed : U.productSeparation
  cycleContinuationClosed : U.cycleContinuation

def ChemicalSurgeryClosed {A : AdmissibleClass} (U : ChemicalSurgeryPackage A) : Prop :=
  U.reactionCutoff ∧ U.catalystRegeneration ∧ U.productSeparation ∧ U.cycleContinuation

theorem chemical_surgery_closed_from_evidence {A : AdmissibleClass} (U : ChemicalSurgeryPackage A) (E : ChemicalSurgeryEvidence U) : ChemicalSurgeryClosed U := by
  exact And.intro E.reactionCutoffClosed
    (And.intro E.catalystRegenerationClosed
      (And.intro E.productSeparationClosed E.cycleContinuationClosed))

end ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean
end HautevilleHouse
