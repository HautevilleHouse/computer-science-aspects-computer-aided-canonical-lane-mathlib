import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerScienceAspectsComputerAided

structure CookLevinPackage where
  satNpComplete : Prop
  proofConstructed : Prop

structure CookLevinEvidence (C : CookLevinPackage) where
  satNpCompleteClosed : C.satNpComplete
  proofConstructedClosed : C.proofConstructed

def CookLevinClosed (C : CookLevinPackage) : Prop :=
  C.satNpComplete ∧ C.proofConstructed

theorem cook_levin_closed_from_evidence (C : CookLevinPackage) (E : CookLevinEvidence C) : CookLevinClosed C := by
  exact And.intro E.satNpCompleteClosed E.proofConstructedClosed

end ComputerScienceAspectsComputerAided
end HautevilleHouse