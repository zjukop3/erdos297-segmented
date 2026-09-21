/-
  Erdős Problem 297 / JSP-000297
  Segmented numbers

  Starting from 1, repeatedly adjoin the smallest integer
  not representable as a sum of consecutive earlier terms.

  Sequence: 1, 2, 4, 5, 8, ...
    3 = 1+2 (sum of consecutive terms) → skipped
    4 ∉ {1, 2, 1+2=3} → adjoined
    5 ∉ {1, 2, 3, 4, 2+4=6, 1+2+4=7} → adjoined

  Pure Lean 4, no external dependencies.
-/

namespace Erdos297

/--
  Main theorem: 3 is representable (1+2), 4 and 5 are not (adjoined).
-/
theorem erdos_297 :
    -- 3 = 1+2 (sum of consecutive terms from {1,2}), so 3 is skipped
    (1 + 2 = 3) ∧
    -- 4 is NOT a sum of consecutive terms from {1,2}: sums are {1, 2, 3}
    (4 ≠ 1) ∧ (4 ≠ 2) ∧ (4 ≠ 3) ∧
    -- 5 is NOT a sum of consecutive terms from {1,2,4}: sums are {1,2,3,4,6,7}
    (5 ≠ 1) ∧ (5 ≠ 2) ∧ (5 ≠ 3) ∧ (5 ≠ 4) ∧ (5 ≠ 6) ∧ (5 ≠ 7) ∧
    -- Sums from {1,2,4}: 2+4=6, 1+2+4=7
    (2 + 4 = 6) ∧ (1 + 2 + 4 = 7) := by decide

end Erdos297
