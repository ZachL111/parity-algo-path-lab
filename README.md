# parity-algo-path-lab

`parity-algo-path-lab` is a OCaml project in algorithms. Its focus is to package an OCaml local lab for path analysis with capacity fixtures, allocation and spill reports, and documented operating limits.

## Problem It Tries To Make Smaller

I want this repository to be useful as a quick reading exercise: fixtures first, implementation second, verifier last.

## Parity Algo Path Lab Review Notes

For a quick review, compare `complexity` with `search depth` before reading the middle cases.

## Working Pieces

- `fixtures/domain_review.csv` adds cases for input width and search depth.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/parity-algo-path-walkthrough.md` walks through the case spread.
- The OCaml code includes a review path for `complexity` and `search depth`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Design Notes

The core code exposes a scoring path and the added review layer uses `signal`, `slack`, `drag`, and `confidence`. The domain terms are `input width`, `search depth`, `boundary pressure`, and `complexity`.

The OCaml code keeps the review rule close to the tests.

## Example Run

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Tests

The check exercises the source code and the review fixture. `recovery` is the high score at 237; `stress` is the low score at 131.

## Known Limits

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
