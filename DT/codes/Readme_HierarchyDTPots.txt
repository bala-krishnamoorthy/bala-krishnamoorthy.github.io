Hierarchy of DT-based Scoring Functions 
=======================================

Default usage for ALL scoring functions to discriminate correct from
incorrect structures:

  > ./DTPot.exe  PDBFILE [chain] [sc tess_cutoff ...]
  (items given in [ ] are optional)

The conformation with the higher score is more native-like, or more
correct.

Examples

  > ./ThreeBNoBury.exe 1ERX.pdb A                                       ......(1)
  > ./Comb34BPot.exe  2ACY.pdb                                          ......(2)

If the PDBFILE has no chain identifier, the argument 'chain' could be
omitted. But if the PDBFILE has one or more chain identifiers, the
chain that is to be scored must be specified (as shown above in
(1)). For the case of no chain identifier, one could give the dummy
argument of '_' (underscore) too. So, we could give

  > ./TwoBNoBury.exe  2ACY.pdb _                                        ......(3)


Notes and additional options
----------------------------

These programs take as input a PDB file and a chain identifier
(optional). They calculate the total log-likelihood score using the
corresponding DT-based scoring function. This score is written to the
standard output (cout). The hierarchy contains SIX different scoring
functions: two-body scoring functions without and with buriedness
distinctions, three-body scoring functions without and with buriedness
distinctions, four-body scoring function, and a combined three- and
four-body scoring function. The names of the corresponding program
files are self-explanatory.

Under the default settings, each residue is represented by its
sidechain center. Also, a distance cut-off of 10A is used for the
edges of the Delaunay tessellation for all scoring functions except
the one using buried three-body contacts, for which the default
distance cut-off is set as 9A.

The alternative settings available are described below.

1. A(ny) different cut-off distance could be specified in the range
   6.5 A to 15 A.
   (the results are not accurate for cut-offs smaller than 6.5 A; and 
    the results are almost identical to those using 15 A cut-off when the
    cut-off distance is specified to be higher than 15 A).
2. C-alpha or C-beta atoms could be used instead of SC-centers 
3. Any subset of the classes of contacts could be used for scoring.
   
  (When these alternative settings are given, the programs still use
  the log-likelihood values developed using the default settings. The
  different settings are applied to the protein being scored.)

To use any combination of these alternate settings, appropriate
arguments should be specified in the command line following the
pdbfile name (which would be the second command line argument). The
order in which the options are specified is immaterial except for the
cases when sub-classes of contacts are specified, as described below.


   Using subset of classes of contacts

   By default, the scoring functions use all connectivity classes, and
   all buriedness class when applicable. To use a subset of the
   connectivity class for 2- and 3-body scoring functions, use the
   keyword "connect" in the command-line, followed by the number of
   connectivity classes to be used, and then the indices of the
   specific classes themselves. The order in which the individual
   classes are specified is immaterial, as long as they follow the
   number of classes to be used. For example, to use only the
   connectivity classes 0 and 1 of 3-body contacts, we can say

   > ./ThreeBNoBury.exe 1ERX.pdb A connect 2 0 1                            ......(4)

   or, equivalently,
   
   > ./ThreeBNoBury.exe 1ERX.pdb connect 2 1 0 A                            ......(5)

   To use a subset of the buriedness classes for 2- and 3-body scoring
   functions, use the keyword "buried" in the command-line, followed
   by the number of buriedness classes to be used, and then the
   indices of the specific classes themselves. Thus, to use only the
   buriedness classes 0,1, and 2 of 2-body contacts, we can say

   > ./Buried_TwoBPot.exe 1ERX.pdb A buried 3 1 0 2                         ......(6)

   To use only the buriedness classes 0-4, and only the connectivity
   class 0 (non-bonded) of 3-body contacts, we can say

   > ./Buried_ThreeBPot.exe 2ACY.pdb buried 5 0 1 3 4 2 connect 1 0         ......(7)

   or, equivalently,
   
   > ./Buried_ThreeBPot.exe 2ACY.pdb connect 1 0 _ buried 5 4 3 2 0 1       ......(8)
   (notice the '_' used as the (no-)chain identifier)


   To use only a subset of the five classes of tetrahedra for the
   4-body scoring function, use the keyword "tetran" followed by the
   number of classed to be used, and then the individual classes
   themselves. Event hough the classes of tetrahedra are based on
   connectivity, the idea of using "tetran" (instead of "connect") is
   to allow the simultaneous use of a subclass of tetrahedra and also
   a subset of buriedness classes. For example, to use only the
   tetrahedra classes 0 and 1 for the 4-body scoring function, and the
   buriedness classes 0-3 for the 3-body terms, we can say

   > ./Comb34BPot.exe 1ERX.pdb A tetran 2 0 1 buried 4 0 1 2 3              ......(9)


More examples

To score using C-alpha's instead of SC-centers (and the rest of the
options being the default ones), one could give

  > ./Comb34BPot.exe 2ACY.pdb ca                                            .....(10)

If one wants to score using C-beta's, but use a cut-off distance of
8.5 A, the command could be

  > ./Comb34BPot.exe 2ACY.pdb cb 8.5                                        .....(11)


To re-confirm, the following command does the same thing as (1)

  > ./Comb34BPot.exe 1ERX.pdb sc A  10.0 tetran 5 0 2 3 4 1                 .....(12)


