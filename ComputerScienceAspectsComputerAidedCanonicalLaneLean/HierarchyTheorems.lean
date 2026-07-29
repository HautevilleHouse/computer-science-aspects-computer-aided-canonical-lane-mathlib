import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerScienceAspectsComputerAided

structure TimeHierarchyPackage where
  languageSeparation : Prop
  diagonalization : Prop

structure SpaceHierarchyPackage where
  languageSeparation : Prop
  diagonalization : Prop

structure HierarchyTheoremsEvidence (T : TimeHierarchyPackage) (S : SpaceHierarchyPackage) where
  timeSeparationClosed : T.languageSeparation
  timeDiagonalizationClosed : T.diagonalization
  spaceSeparationClosed : S.languageSeparation
  spaceDiagonalizationClosed : S.diagonalization

def HierarchyTheoremsClosed (T : TimeHierarchyPackage) (S : SpaceHierarchyPackage) : Prop :=
  T.languageSeparation ∧ T.diagonalization ∧ S.languageSeparation ∧ S.diagonalization

theorem hierarchy_theorems_closed_from_evidence (T : TimeHierarchyPackage) (S : SpaceHierarchyPackage) (E : HierarchyTheoremsEvidence T S) : HierarchyTheoremsClosed T S := by
  exact And.intro E.timeSeparationClosed (And.intro E.timeDiagonalizationClosed (And.intro E.spaceSeparationClosed E.spaceDiagonalizationClosed))

end ComputerScienceAspectsComputerAided
end HautevilleHouse