# vector-sys-fd-lens

`vector-sys-fd-lens` keeps a focused R implementation around systems programming. The project goal is to build an R toolkit that studies fd behavior through negative fixtures, with human-readable error snapshots and no credentials or hosted services.

## Why This Exists

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Vector Sys Fd Lens Review Notes

Start with `guard slack` and `allocation pressure`. Those cases create the widest score spread in this repo, so they are the best quick check when the model changes.

## Capabilities

- `fixtures/domain_review.csv` adds cases for allocation pressure and dirty state.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/vector-sys-fd-walkthrough.md` walks through the case spread.
- The R code includes a review path for `guard slack` and `allocation pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Shape

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `allocation pressure`, `dirty state`, `guard slack`, and `layout drift`.

The R code keeps the review rule close to the tests.

## Local Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Verification

The check exercises the source code and the review fixture. `edge` is the high score at 238; `stale` is the low score at 162.

## Roadmap

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
