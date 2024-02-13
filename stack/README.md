In this folder, you can find:
- `stack.cafe`: the CafeOBJ specification of Treiber's stack integrated with hazard pointers.
- `properties.cafe`: the properties of interest and lemmas to prove them, which include lemmas for the function `reclaim(int *p)` and those for the functions `push()` and `pop()`.
- `inputs`: the input commands to re-generate the proof scores. It is only helpful in case you want to re-generate the proof scores again.
- `gen-stack.sh`: commands for re-generating the proof scores. You need to update the correct paths to Maude and IPSG in that bash file.
- others: proofs of properties and lemmas, for example, `safety2.cafe` is the proof of the property `safety2`.
