import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerScienceAspectsComputerAided

structure TuringMachineConfig where
  state : String
  tape : List Bool
  position : Nat

def halts (tm : TuringMachineConfig) : Prop := False -- placeholder

structure DecidabilityPackage where
  problem : String
  undecidable : Prop
  reductionExists : Prop

structure DecidabilityEvidence (D : DecidabilityPackage) where
  undecidableClosed : D.undecidable
  reductionExistsClosed : D.reductionExists

def DecidabilityClosed (D : DecidabilityPackage) : Prop :=
  D.undecidable ∧ D.reductionExists

theorem decidability_closed_from_evidence (D : DecidabilityPackage) (E : DecidabilityEvidence D) : DecidabilityClosed D := by
  exact And.intro E.undecidableClosed E.reductionExistsClosed

end ComputerScienceAspectsComputerAided
end HautevilleHouse