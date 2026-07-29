import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Prop
  activationBarrier : Prop
  catalystBinding : Prop
  selectivityControl : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  rateLawClosed : R.rateLaw
  activationBarrierClosed : R.activationBarrier
  catalystBindingClosed : R.catalystBinding
  selectivityControlClosed : R.selectivityControl

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw ∧ R.activationBarrier ∧ R.catalystBinding ∧ R.selectivityControl

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) (E : ReactionKineticsEvidence R) :
    ReactionKineticsClosed R := by
  exact And.intro E.rateLawClosed (And.intro E.activationBarrierClosed (And.intro E.catalystBindingClosed E.selectivityControlClosed))

end ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean
end HautevilleHouse