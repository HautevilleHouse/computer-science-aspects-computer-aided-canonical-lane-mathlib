import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerScienceAspectsComputerAidedCanonicalLaneLean

structure CSAdmittedObject where
  formalLanguage : Type
  turingMachine : Type
  computationModelEquivalence : Prop
  complexityClass : Type
  completenessProof : Prop
  conclusion : completenessProof

def CSWitnessClosed (O : CSAdmittedObject) : Prop :=
  O.completenessProof

end ComputerScienceAspectsComputerAidedCanonicalLaneLean
end HautevilleHouse
