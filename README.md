## Verifying safe memory reclamation in concurrent programs with CafeOBJ

This repository contains the formal verification of two concurrent programs: (1) shared counter and (2) Treiber's stack integrated with hazard pointer mechanism for safe memory reclamation.

1. `common.cafe`: some common parts for the specifications of the two programs, including the specifications of unsigned integers as well as the execution labels - module `LABEL`.

2. `shared-counter`: the verification of (1) the shared counter program.

3. `stack`: the verification of (2) Treiber's stack.


## Tools installation
Our verification requires the use of CafeInMaude, which can be downloaded from here: https://github.com/ariesco/CafeInMaude.
To install CafeInMaude, we first need to intall Maude, which we can download its version 3.2 from here: http://maude.cs.illinois.edu/w/index.php/Maude_download_and_installation.
Both installations are simple, with Maude, you just need to download the binary file (and perhaps add the tool to the PATH environment variable to execute the tool from everywhere), while with CafeInMaude, you just need to clone its repo.
After that, move to the next step to execute proof scores.

## Executing proof scores
Proof scores are executable (CafeOBJ code).
You can try to run the proof score of `safety2` of the Shared counter program by the following commands:
```
cafeobj common.cafe shared-counter/sc-hp.cafe shared-counter/properties.cafe shared-counter/safety2.cafe 
```

Or with CafeInMaude:

```
maude -allow-files path-to-CafeInMaude/src/cafeInMaude.maude
load common.cafe .
load shared-counter/sc-hp.cafe .
load shared-counter/properties.cafe .
load shared-counter/safety2.cafe .
```

## Re-generating proof scores
To re-generate the proof scores again, first, modify paths to Maude and IPSG in file `shared-counter/gen-sc.sh` and then run it.
Please check IPSG's repository as well: https://github.com/duongtd23/IPSG-tool.