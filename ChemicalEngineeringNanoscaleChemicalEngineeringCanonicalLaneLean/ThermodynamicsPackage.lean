import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean

structure ThermodynamicsPackage where
  entropyBalance : Prop
  enthalpyFormation : Prop
  gibbsFreeEnergy : Prop
  phaseEquilibrium : Prop

structure ThermodynamicsEvidence (T : ThermodynamicsPackage) where
  entropyBalanceClosed : T.entropyBalance
  enthalpyFormationClosed : T.enthalpyFormation
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  phaseEquilibriumClosed : T.phaseEquilibrium

def ThermodynamicsClosed (T : ThermodynamicsPackage) : Prop :=
  T.entropyBalance ∧ T.enthalpyFormation ∧ T.gibbsFreeEnergy ∧ T.phaseEquilibrium

theorem thermodynamics_closed_from_evidence (T : ThermodynamicsPackage) (E : ThermodynamicsEvidence T) :
    ThermodynamicsClosed T := by
  exact And.intro E.entropyBalanceClosed (And.intro E.enthalpyFormationClosed (And.intro E.gibbsFreeEnergyClosed E.phaseEquilibriumClosed))

end ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean
end HautevilleHouse