import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerScienceAspectsComputerAidedCanonicalLaneLean

structure AlgorithmicRandomness where
  probabilitySpace : Type
  tests : Type
  randomSequence : Type
  randomnessDefinition : Prop
  randomnessDefinitionTerm : randomnessDefinition
  martingaleCharacterization : Prop
  martingaleCharacterizationTerm : martingaleCharacterization
  compressionCharacterization : Prop
  compressionCharacterizationTerm : compressionCharacterization

structure AlgorithmicRandomnessEvidence (A : AlgorithmicRandomness) where
  randomnessDefinitionClosed : A.randomnessDefinition
  martingaleCharacterizationClosed : A.martingaleCharacterization
  compressionCharacterizationClosed : A.compressionCharacterization

def AlgorithmicRandomnessClosed (A : AlgorithmicRandomness) : Prop :=
  A.randomnessDefinition ∧ A.martingaleCharacterization ∧ A.compressionCharacterization

theorem algorithmic_randomness_closed_from_evidence (A : AlgorithmicRandomness) (E : AlgorithmicRandomnessEvidence A) :
    AlgorithmicRandomnessClosed A := by
  exact And.intro E.randomnessDefinitionClosed (And.intro E.martingaleCharacterizationClosed E.compressionCharacterizationClosed)

end HautevilleHouse.ComputerScienceAspectsComputerAidedCanonicalLaneLean
end HautevilleHouse