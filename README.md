# aoc.ml

Advent of Code solutions in OCaml, one dune project per year.

## Setup

```sh
nix develop
```

This drops you into a shell with `ocaml`, `dune`, `opam`, `ocaml-lsp`, `ocamlformat`, and `utop`.

## Usage

Each year is its own dune project:

```sh
cd 2015
dune exec bin/day01.exe -- inputs/day01.txt
```

Puzzle inputs are personal per Advent of Code's terms, so `inputs/*.txt` is gitignored. Drop your own input file in `<year>/inputs/dayNN.txt` before running.

## Adding a new day

1. Add `dayNN.ml` to `<year>/bin/`.
2. Add `dayNN` to the `names` field in `<year>/bin/dune`.
