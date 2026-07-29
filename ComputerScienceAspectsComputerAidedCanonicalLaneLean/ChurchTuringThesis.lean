import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerScienceAspectsComputerAidedCanonicalLaneLean

structure ChurchTuringThesis where
  recursiveFunctions : Type
  turingMachines : Type
  lambdaCalculus : Type
  equivalenceProof : Prop
  equivalenceProofTerm : equivalenceProof
  effectivelyCalculable : Prop
  effectivelyCalculableTerm : effectivelyCalculable

structure ChurchTuringThesisEvidence (C : ChurchTuringThesis) where
  equivalenceProofClosed : C.equivalenceProof
  effectivelyCalculableClosed : C.effectivelyCalculable

def ChurchTuringThesisClosed (C : ChurchTuringThesis) : Prop :=
  C.equivalenceProof ∧ C.effectivelyCalculable

theorem church_turing_thesis_closed_from_evidence (C : ChurchTuringThesis) (E : ChurchTuringThesisEvidence C) :
    ChurchTuringThesisClosed C := by
  exact And.intro E.equivalenceProofClosed E.effectivelyCalculableClosed

end HautevilleHouse.ComputerScienceAspectsComputerAidedCanonicalLaneLean
end HautevilleHouse