import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerScienceAspectsComputerAidedCanonicalLaneLean

structure NPCompleteness where
  problemType : Type
  certificateType : Type
  verifier : problemType × certificateType → Bool
  polynomialTime : Prop
  polynomialTimeTerm : polynomialTime
  completeness : Prop
  completenessTerm : completeness
  hardness : Prop
  hardnessTerm : hardness

structure NPCompletenessEvidence (N : NPCompleteness) where
  polynomialTimeClosed : N.polynomialTime
  completenessClosed : N.completeness
  hardnessClosed : N.hardness

def NPCompletenessClosed (N : NPCompleteness) : Prop :=
  N.polynomialTime ∧ N.completeness ∧ N.hardness

theorem np_completeness_closed_from_evidence (N : NPCompleteness) (E : NPCompletenessEvidence N) :
    NPCompletenessClosed N := by
  exact And.intro E.polynomialTimeClosed (And.intro E.completenessClosed E.hardnessClosed)

end HautevilleHouse.ComputerScienceAspectsComputerAidedCanonicalLaneLean
end HautevilleHouse