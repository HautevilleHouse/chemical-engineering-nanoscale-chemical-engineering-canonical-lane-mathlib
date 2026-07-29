import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean

structure NanoscaleTransportPhenomenaPackage where
  ficksLawDiffusion : Prop
  stefanMaxwellEquations : Prop
  convectiveHeatTransfer : Prop
  momentumBoundaryLayer : Prop

structure NanoscaleTransportPhenomenaEvidence (N : NanoscaleTransportPhenomenaPackage) where
  ficksLawDiffusionClosed : N.ficksLawDiffusion
  stefanMaxwellEquationsClosed : N.stefanMaxwellEquations
  convectiveHeatTransferClosed : N.convectiveHeatTransfer
  momentumBoundaryLayerClosed : N.momentumBoundaryLayer

def NanoscaleTransportPhenomenaClosed (N : NanoscaleTransportPhenomenaPackage) : Prop :=
  N.ficksLawDiffusion ∧ N.stefanMaxwellEquations ∧ N.convectiveHeatTransfer ∧ N.momentumBoundaryLayer

theorem nanoscale_transport_phenomena_closed_from_evidence (N : NanoscaleTransportPhenomenaPackage) (E : NanoscaleTransportPhenomenaEvidence N) :
    NanoscaleTransportPhenomenaClosed N := by
  exact And.intro E.ficksLawDiffusionClosed
    (And.intro E.stefanMaxwellEquationsClosed
      (And.intro E.convectiveHeatTransferClosed E.momentumBoundaryLayerClosed))

end ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean
end HautevilleHouse
