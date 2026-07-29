import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerScienceAspectsComputerAidedCanonicalLaneLean

structure ComplexityClass where
  name : String
  timeBound : Nat → Nat
  spaceBound : Nat → Nat
  deterministic : Bool
  closedUnderReductions : Prop

structure HierarchyTheorem where
  lowerClass : ComplexityClass
  upperClass : ComplexityClass
  separation : Prop
  diagonalizationUsed : Prop
  paddingArgument : Prop
  timeHierarchy : Prop
  spaceHierarchy : Prop

structure HierarchyTheoremEvidence (H : HierarchyTheorem) where
  separationClosed : H.separation
  diagonalizationUsedClosed : H.diagonalizationUsed
  paddingArgumentClosed : H.paddingArgument
  timeHierarchyClosed : H.timeHierarchy
  spaceHierarchyClosed : H.spaceHierarchy

def HierarchyTheoremClosed (H : HierarchyTheorem) : Prop :=
  H.separation ∧ H.diagonalizationUsed ∧ H.paddingArgument ∧ H.timeHierarchy ∧ H.spaceHierarchy

theorem hierarchy_theorem_closed_from_evidence (H : HierarchyTheorem) (E : HierarchyTheoremEvidence H) : HierarchyTheoremClosed H :=
  And.intro E.separationClosed
    (And.intro E.diagonalizationUsedClosed
      (And.intro E.paddingArgumentClosed
        (And.intro E.timeHierarchyClosed E.spaceHierarchyClosed)))

end ComputerScienceAspectsComputerAidedCanonicalLaneLean
end HautevilleHouse