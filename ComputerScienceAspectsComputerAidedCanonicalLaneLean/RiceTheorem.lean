import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerScienceAspectsComputerAidedCanonicalLaneLean

structure RiceTheorem where
  indexSet : Set (ℕ → ℕ)
  nonTrivial : Prop
  nonTrivialTerm : nonTrivial
  undecidable : Prop
  undecidableTerm : undecidable
  indexSetIsSemidecidable : Prop
  indexSetIsSemidecidableTerm : indexSetIsSemidecidable

structure RiceTheoremEvidence (R : RiceTheorem) where
  nonTrivialClosed : R.nonTrivial
  undecidableClosed : R.undecidable
  indexSetIsSemidecidableClosed : R.indexSetIsSemidecidable

def RiceTheoremClosed (R : RiceTheorem) : Prop :=
  R.nonTrivial ∧ R.undecidable ∧ R.indexSetIsSemidecidable

theorem rice_theorem_closed_from_evidence (R : RiceTheorem) (E : RiceTheoremEvidence R) :
    RiceTheoremClosed R := by
  exact And.intro E.nonTrivialClosed (And.intro E.undecidableClosed E.indexSetIsSemidecidableClosed)

end HautevilleHouse.ComputerScienceAspectsComputerAidedCanonicalLaneLean
end HautevilleHouse