import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean

structure NanoscaleTransportPackage where
  diffusionCoefficient : Prop
  convectiveTransport : Prop
  electrostaticMigration : Prop
  interfacialMassTransfer : Prop

structure NanoscaleTransportEvidence (N : NanoscaleTransportPackage) where
  diffusionCoefficientClosed : N.diffusionCoefficient
  convectiveTransportClosed : N.convectiveTransport
  electrostaticMigrationClosed : N.electrostaticMigration
  interfacialMassTransferClosed : N.interfacialMassTransfer

def NanoscaleTransportClosed (N : NanoscaleTransportPackage) : Prop :=
  N.diffusionCoefficient ∧ N.convectiveTransport ∧ N.electrostaticMigration ∧ N.interfacialMassTransfer

theorem nanoscale_transport_closed_from_evidence (N : NanoscaleTransportPackage) (E : NanoscaleTransportEvidence N) :
    NanoscaleTransportClosed N := by
  exact And.intro E.diffusionCoefficientClosed (And.intro E.convectiveTransportClosed (And.intro E.electrostaticMigrationClosed E.interfacialMassTransferClosed))

end ChemicalEngineeringNanoscaleChemicalEngineeringCanonicalLaneLean
end HautevilleHouse