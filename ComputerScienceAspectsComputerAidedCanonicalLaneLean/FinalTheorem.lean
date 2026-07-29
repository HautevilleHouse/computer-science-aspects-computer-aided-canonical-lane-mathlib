import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerScienceAspectsComputerAidedCanonicalLaneLean

def ConstrainedCSAClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_csa_endgame (A : AdmissibleClass) :
    ConstrainedCSAClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end HautevilleHouse.ComputerScienceAspectsComputerAidedCanonicalLaneLean
end HautevilleHouse