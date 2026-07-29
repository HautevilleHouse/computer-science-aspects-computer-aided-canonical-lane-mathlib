import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerScienceAspectsComputerAidedCanonicalLaneLean

structure HaltingProblem where
  programEncoding : Type
  inputEncoding : Type
  halts : programEncoding → inputEncoding → Prop
  haltingOracleExists : Prop
  haltingOracleNoncomputable : Prop
  reductionFromOtherProblems : Prop

structure Undecidability where
  haltingProblem : HaltingProblem
  haltingUndecidable : Prop
  diagonalizationProof : Prop
  reductionToOtherProblems : Prop
  manyOneReductions : Prop

structure UndecidabilityEvidence (U : Undecidability) where
  haltingUndecidableClosed : U.haltingUndecidable
  diagonalizationProofClosed : U.diagonalizationProof
  reductionToOtherProblemsClosed : U.reductionToOtherProblems
  manyOneReductionsClosed : U.manyOneReductions

def UndecidabilityClosed (U : Undecidability) : Prop :=
  U.haltingUndecidable ∧ U.diagonalizationProof ∧ U.reductionToOtherProblems ∧ U.manyOneReductions

theorem undecidability_closed_from_evidence (U : Undecidability) (E : UndecidabilityEvidence U) : UndecidabilityClosed U :=
  And.intro E.haltingUndecidableClosed
    (And.intro E.diagonalizationProofClosed
      (And.intro E.reductionToOtherProblemsClosed E.manyOneReductionsClosed))

end ComputerScienceAspectsComputerAidedCanonicalLaneLean
end HautevilleHouse