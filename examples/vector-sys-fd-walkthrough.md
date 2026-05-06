# Vector Sys Fd Lens Walkthrough

This note is the quickest way to read the extra review model in `vector-sys-fd-lens`.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | allocation pressure | 212 | ship |
| stress | dirty state | 186 | ship |
| edge | guard slack | 238 | ship |
| recovery | layout drift | 199 | ship |
| stale | allocation pressure | 162 | ship |

Start with `edge` and `stale`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The next useful expansion would be a malformed fixture around dirty state and layout drift.
