import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstant : Prop
  reactionQuotient : Prop
  leChatelierPrinciple : Prop
  temperatureDependence : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  equilibriumConstantClosed : C.equilibriumConstant
  reactionQuotientClosed : C.reactionQuotient
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  temperatureDependenceClosed : C.temperatureDependence

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.equilibriumConstant ∧ C.reactionQuotient ∧ C.leChatelierPrinciple ∧ C.temperatureDependence

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage) (E : ChemicalEquilibriumEvidence C) :
    ChemicalEquilibriumClosed C := by
  exact And.intro E.equilibriumConstantClosed (And.intro E.reactionQuotientClosed (And.intro E.leChatelierPrincipleClosed E.temperatureDependenceClosed))

end ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean
end HautevilleHouse