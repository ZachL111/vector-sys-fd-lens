# Field Notes

This note keeps the systems programming assumptions visible beside the checks.

The domain cases cover `allocation pressure`, `dirty state`, `guard slack`, and `layout drift`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

`edge` is the strongest case at 238 on `guard slack`. `stale` is the cautious anchor at 162 on `allocation pressure`.

The point is not to make the repository bigger. The point is to make the important judgment testable.
