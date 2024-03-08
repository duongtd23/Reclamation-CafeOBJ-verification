## Verifying safe memory reclamation in concurrent programs with CafeOBJ

This repository contains the formal verification of two concurrent programs: (1) shared counter and (2) Treiber's stack integrated with hazard pointer mechanism for safe memory reclamation.

1. `common.cafe`: some common parts for the specifications of the two programs, including the specifications of unsigned integers as well as the execution labels - module `LABEL`. 

2. `shared-counter`: the verification of (1) the shared counter program. Check README in that folder.

3. `stack`: the verification of (2) Treiber's stack. Check README in that folder.

## Executing proof scores
Proof scores are executable (CafeOBJ code). To install CafeOBJ, please isit https://cafeobj.org/.
You can try to run the proof score of `safety2` of the Shared counter program by the following commands:
```bash
$ cafeobj common.cafe shared-counter/sc-hp.cafe shared-counter/properties.cafe shared-counter/safety2.cafe 
```

Note that some proofs are run slowly with CafeOBJ, and usually run faster with CafeInMaude, the second major implementation of CafeOBJ in Maude.
CafeInMaude is available inside IPSG (IPSG is implemented on top of CafeInMaude) - https://github.com/duongtd23/IPSG-tool.
To install IPSG, we first need to intall Maude - a high performance language, which can be downloaded from here: http://maude.cs.illinois.edu/w/index.php/Maude_download_and_installation. Download and clone the two tools.
Once install them, 
you can try to run the proof score of `safety2` by the following commands:


```bash
$ maude -allow-files path-to-IPSG-folder/cafeinmaude3/cafeInMaude.maude
CafeInMaude> load common.cafe .
CafeInMaude> load shared-counter/sc-hp.cafe .
CafeInMaude> load shared-counter/properties.cafe .
CafeInMaude> load shared-counter/safety2.cafe .
```

where `path-to-IPSG-folder` is the path of the IPSG folder.
Note that you may need to either change the current working directory by `cd` command before running the `load` commands above or use the absolute paths instead.

## Re-generating proof scores
To re-generate the proof scores again, first, modify paths to Maude and IPSG in file `shared-counter/gen-sc.sh` and then run it.
Please check IPSG's repository as well: https://github.com/duongtd23/IPSG-tool.

```bash
$ cd shared-counter
$ ./gen-sc.sh
```