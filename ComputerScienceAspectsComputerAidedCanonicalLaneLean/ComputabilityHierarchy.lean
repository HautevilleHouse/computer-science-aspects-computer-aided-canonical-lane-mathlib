import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputerScienceAspectsComputerAidedCanonicalLaneLean

structure ComputabilityHierarchy where
  arithmeticalHierarchy : ℕ → Set (ℕ → ℕ)
  analyticalHierarchy : ℕ → Set (ℕ → ℕ)
  hyperarithmeticalHierarchy : ℕ → Set (ℕ → ℕ)
  recursiveOrdinals : Type
  KleeneO : Set recursiveOrdinals
  hierarchyRelations : Prop
  hierarchyRelationsTerm : hierarchyRelations

structure ComputabilityHierarchyEvidence (H : ComputabilityHierarchy) where
  hierarchyRelationsClosed : H.hierarchyRelations

def ComputabilityHierarchyClosed (H : ComputabilityHierarchy) : Prop :=
  H.hierarchyRelations ∧ True

theorem computability_hierarchy_closed_from_evidence (H : ComputabilityHierarchy) (E : ComputabilityHierarchyEvidence H) :
    ComputabilityHierarchyClosed H := by
  exact And.intro E.hierarchyRelationsClosed trivial

end HautevilleHouse.ComputerScienceAspectsComputerAidedCanonicalLaneLean
end HautevilleHouse