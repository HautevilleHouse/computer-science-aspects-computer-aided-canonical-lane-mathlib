import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerScienceAspectsComputerAidedCanonicalLaneLean

structure CSAAdmittedObject where
  machineModel : Type
  computationClass : Prop
  complexityClass : Prop
  decisionProblem : Type
  computableReduction : Prop
  conclusion : computableReduction

def CSAWitnessClosed (O : CSAAdmittedObject) : Prop :=
  O.computableReduction

end ComputerScienceAspectsComputerAidedCanonicalLaneLean
end HautevilleHouse