import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerScienceAspectsComputerAidedCanonicalLaneLean

structure TuringMachine where
  states : Type
  alphabet : Type
  transition : states × alphabet → states × alphabet × ℤ
  initialState : states
  blankSymbol : alphabet
  finalStates : Set states
  haltingCondition : Prop
  haltingConditionTerm : haltingCondition

structure TuringMachineEvidence (T : TuringMachine) where
  haltingConditionClosed : T.haltingCondition
  fullDefined : Prop
  fullDefinedClosed : fullDefined

def TuringMachineClosed (T : TuringMachine) : Prop :=
  T.haltingCondition ∧ True

theorem turing_machine_closed_from_evidence (T : TuringMachine) (E : TuringMachineEvidence T) :
    TuringMachineClosed T := by
  exact And.intro E.haltingConditionClosed trivial

end HautevilleHouse.ComputerScienceAspectsComputerAidedCanonicalLaneLean
end HautevilleHouse