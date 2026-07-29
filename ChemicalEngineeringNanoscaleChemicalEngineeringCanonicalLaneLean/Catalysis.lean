import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean

structure CatalysisPackage where
  activeSite : Prop
  turnoverFrequency : Prop
  activationEnergy : Prop
  poisoningEffect : Prop

structure CatalysisEvidence (C : CatalysisPackage) where
  activeSiteClosed : C.activeSite
  turnoverFrequencyClosed : C.turnoverFrequency
  activationEnergyClosed : C.activationEnergy
  poisoningEffectClosed : C.poisoningEffect

def CatalysisClosed (C : CatalysisPackage) : Prop :=
  C.activeSite ∧ C.turnoverFrequency ∧ C.activationEnergy ∧ C.poisoningEffect

theorem catalysis_closed_from_evidence (C : CatalysisPackage)
    (E : CatalysisEvidence C) : CatalysisClosed C := by
  exact And.intro E.activeSiteClosed
    (And.intro E.turnoverFrequencyClosed
      (And.intro E.activationEnergyClosed E.poisoningEffectClosed))

end ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean
end HautevilleHouse