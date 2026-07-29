import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean

structure ThermodynamicsPackage where
  firstLaw : Prop
  secondLaw : Prop
  freeEnergy : Prop
  equilibriumCondition : Prop
  chemicalPotential : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  firstLawClosed : T.firstLaw
  secondLawClosed : T.secondLaw
  freeEnergyClosed : T.freeEnergy
  equilibriumConditionClosed : T.equilibriumCondition
  chemicalPotentialClosed : T.chemicalPotential

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.firstLaw ∧ T.secondLaw ∧ T.freeEnergy ∧ T.equilibriumCondition ∧ T.chemicalPotential

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.firstLawClosed
    (And.intro E.secondLawClosed
      (And.intro E.freeEnergyClosed
        (And.intro E.equilibriumConditionClosed E.chemicalPotentialClosed)))

end ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean
end HautevilleHouse