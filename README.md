# vector-sys-fd-lens

`vector-sys-fd-lens` is a R project for Systems programming. It turns build an R toolkit that studies fd behavior through negative fixtures, with human-readable error snapshots and no credentials or hosted services into a small local model with readable fixtures and a direct verification command.

## Reading Vector Sys Fd Lens

Start with the README, then open `metadata/project.json` to check the constants behind the examples. After that, `fixtures/cases.csv` shows the compact path and `examples/extended_cases.csv` gives a wider look at the same rule.

## Purpose

The repository exists to keep a technical idea small enough to reason about. The implementation avoids external dependencies where possible, then uses fixtures to make changes easy to review.

## Files Worth Reading

- `tests`: verification harness
- `fixtures`: compact golden scenarios
- `examples`: expanded scenario set
- `metadata`: project constants and verification metadata
- `docs`: operations and extension notes
- `scripts`: local verification and audit commands

## What It Does

- Includes extended examples for bounds checks, including `recovery` and `degraded`.
- Documents low-level invariants tradeoffs in `docs/operations.md`.
- Runs locally with a single verification command and no external credentials.
- Stores project constants and verification metadata in `metadata/project.json`.
- Adds a repository audit script that checks structure before running the language verifier.

## Design Sketch

The core is a scoring model over demand, capacity, latency, risk, and weight. That keeps memory shape, resource pressure, and bounds checks in one explicit decision path. The threshold is 175, with risk penalty 4, latency penalty 4, and weight bonus 2. The R version keeps the model as simple functions over named lists for easy analysis use.

## Setup

Clone the repository, enter the directory, and run the verifier. No database server, cloud account, or token is required.

## Fixture Notes

The extended cases are not random smoke tests. `degraded` keeps pressure on the review path, while `recovery` shows the model when capacity and weight are strong enough to clear the threshold.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

This runs the language-level build or test path against the compact fixture set.

## Verification

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/audit.ps1
```

The audit command checks repository structure and README constraints before it delegates to the verifier.

## Next Directions

- Add malformed input fixtures so the failure path is as visible as the happy path.
- Split the scoring constants into a typed configuration object and validate it before use.
- Add a comparison mode that shows how decisions change when one signal is adjusted.
- Add one more systems programming fixture that focuses on a malformed or borderline input.

## Limits

This code is local-first. It makes no claim about deployed usage and avoids credentials, hosted state, and environment-specific setup.
