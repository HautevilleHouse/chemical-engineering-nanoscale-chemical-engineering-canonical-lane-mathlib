import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean

structure MolecularOrbitalTheoryPackage where
  huckelModel : Prop
  overlapIntegrals : Prop
  energyLevels : Prop
  frontierOrbitals : Prop
  bondOrder : Prop

structure MolecularOrbitalTheoryEvidence (M : MolecularOrbitalTheoryPackage) where
  huckelModelClosed : M.huckelModel
  overlapIntegralsClosed : M.overlapIntegrals
  energyLevelsClosed : M.energyLevels
  frontierOrbitalsClosed : M.frontierOrbitals
  bondOrderClosed : M.bondOrder

def MolecularOrbitalTheoryClosed (M : MolecularOrbitalTheoryPackage) : Prop :=
  M.huckelModel ∧ M.overlapIntegrals ∧ M.energyLevels ∧ M.frontierOrbitals ∧ M.bondOrder

theorem molecular_orbital_theory_closed_from_evidence (M : MolecularOrbitalTheoryPackage) (E : MolecularOrbitalTheoryEvidence M) :
    MolecularOrbitalTheoryClosed M := by
  exact And.intro E.huckelModelClosed
    (And.intro E.overlapIntegralsClosed
      (And.intro E.energyLevelsClosed
        (And.intro E.frontierOrbitalsClosed E.bondOrderClosed)))

end ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean
end HautevilleHouse