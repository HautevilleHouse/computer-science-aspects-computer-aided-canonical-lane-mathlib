import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerScienceAspectsComputerAided

structure SATInstance where
  clauses : List (List Nat)

structure NPCompletenessPackage where
  np : Prop
  hard : Prop
  complete : Prop

structure NPCompletenessEvidence (N : NPCompletenessPackage) where
  npClosed : N.np
  hardClosed : N.hard
  completeClosed : N.complete

def NPCompletenessClosed (N : NPCompletenessPackage) : Prop :=
  N.np ∧ N.hard ∧ N.complete

theorem np_completeness_closed_from_evidence (N : NPCompletenessPackage) (E : NPCompletenessEvidence N) : NPCompletenessClosed N := by
  exact And.intro E.npClosed (And.intro E.hardClosed E.completeClosed)

end ComputerScienceAspectsComputerAided
end HautevilleHouse