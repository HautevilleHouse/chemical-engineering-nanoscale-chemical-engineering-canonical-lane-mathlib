import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstant : Prop
  leChatelierPrinciple : Prop
  reactionQuotient : Prop
  equilibriumConcentrations : Prop
  temperatureDependence : Prop

structure ChemicalEquilibriumEvidence (E : ChemicalEquilibriumPackage) where
  equilibriumConstantClosed : E.equilibriumConstant
  leChatelierPrincipleClosed : E.leChatelierPrinciple
  reactionQuotientClosed : E.reactionQuotient
  equilibriumConcentrationsClosed : E.equilibriumConcentrations
  temperatureDependenceClosed : E.temperatureDependence

def ChemicalEquilibriumClosed (E : ChemicalEquilibriumPackage) : Prop :=
  E.equilibriumConstant ∧ E.leChatelierPrinciple ∧ E.reactionQuotient ∧ E.equilibriumConcentrations ∧ E.temperatureDependence

theorem chemical_equilibrium_closed_from_evidence (E : ChemicalEquilibriumPackage) (Ev : ChemicalEquilibriumEvidence E) :
    ChemicalEquilibriumClosed E := by
  exact And.intro Ev.equilibriumConstantClosed
    (And.intro Ev.leChatelierPrincipleClosed
      (And.intro Ev.reactionQuotientClosed
        (And.intro Ev.equilibriumConcentrationsClosed Ev.temperatureDependenceClosed)))

end ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean
end HautevilleHouse