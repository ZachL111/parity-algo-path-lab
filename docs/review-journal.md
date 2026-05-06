# Review Journal

The repository goal stays the same: package an OCaml local lab for path analysis with capacity fixtures, allocation and spill reports, and documented operating limits. This note explains the added review angle.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its algorithms focus without claiming live deployment or external usage.

## Cases

- `baseline`: `input width`, score 204, lane `ship`
- `stress`: `search depth`, score 131, lane `watch`
- `edge`: `boundary pressure`, score 212, lane `ship`
- `recovery`: `complexity`, score 237, lane `ship`
- `stale`: `input width`, score 160, lane `ship`

## Note

This file is intentionally plain so the fixture remains the source of truth.
