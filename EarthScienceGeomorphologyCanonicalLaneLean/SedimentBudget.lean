import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthScienceGeomorphologyCanonicalLaneLean

structure SedimentBudgetPackage where
  erosionRate : Prop
  depositionRate : Prop
  sedimentYield : Prop
  storageChange : Prop

structure SedimentBudgetEvidence (S : SedimentBudgetPackage) where
  erosionRateClosed : S.erosionRate
  depositionRateClosed : S.depositionRate
  sedimentYieldClosed : S.sedimentYield
  storageChangeClosed : S.storageChange

def SedimentBudgetClosed (S : SedimentBudgetPackage) : Prop :=
  S.erosionRate ∧ S.depositionRate ∧
  S.sedimentYield ∧ S.storageChange

theorem sediment_budget_closed_from_evidence (S : SedimentBudgetPackage)
    (E : SedimentBudgetEvidence S) : SedimentBudgetClosed S := by
  exact And.intro E.erosionRateClosed
    (And.intro E.depositionRateClosed
      (And.intro E.sedimentYieldClosed E.storageChangeClosed))

end EarthScienceGeomorphologyCanonicalLaneLean
end HautevilleHouse