import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerScienceAspectsComputerAidedCanonicalLaneLean

structure TuringMachine where
  states : Type
  alphabet : Type
  blank : alphabet
  initial : states
  final : states → Prop
  transition : states → alphabet → states × alphabet × Nat
  haltsOnInput : states → List alphabet → Prop
  haltingOutput : states → List alphabet → List alphabet
  stateFinite : Fintype states
  alphabetFinite : Fintype alphabet
  finalDecidable : DecidablePred final

structure TuringComplete where
  machine : TuringMachine
  computesAllPartialRecursiveFunctions : Prop
  universalMachineProperty : Prop
  equivalenceToLambdaCalculus : Prop

structure TuringCompletenessEvidence (T : TuringComplete) where
  computesAllPartialRecursiveFunctionsClosed : T.computesAllPartialRecursiveFunctions
  universalMachinePropertyClosed : T.universalMachineProperty
  equivalenceToLambdaCalculusClosed : T.equivalenceToLambdaCalculus

def TuringCompletenessClosed (T : TuringComplete) : Prop :=
  T.computesAllPartialRecursiveFunctions ∧ T.universalMachineProperty ∧ T.equivalenceToLambdaCalculus

theorem turing_completeness_closed_from_evidence (T : TuringComplete) (E : TuringCompletenessEvidence T) : TuringCompletenessClosed T :=
  And.intro E.computesAllPartialRecursiveFunctionsClosed (And.intro E.universalMachinePropertyClosed E.equivalenceToLambdaCalculusClosed)

end ComputerScienceAspectsComputerAidedCanonicalLaneLean
end HautevilleHouse