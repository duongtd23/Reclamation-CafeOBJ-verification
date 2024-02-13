In this folder, you can find:
- `sc-hp.cafe`: the CafeOBJ specification of the shared counter program integrated with hazard pointers.
- `properties.cafe`: the properties of interest and lemmas to prove them, which include lemmas for the function `reclaim(int *p)` and those for the function `inc()`.
- `sc-without-hp`: contains the specification of the shared counter program without hazard pointers and the counterexample of `safety1` with respect to this specification.
- `inputs`: the input commands to re-generate the proof scores. It is only helpful in case you want to re-generate the proof scores again.
- `gen-sc.sh`: commands for re-generating the proof scores. You need to update the correct paths to Maude and IPSG in that bash file.
- others: proofs of properties and lemmas, for example, `safety1.cafe` is the proof score of the property `safety1`.
