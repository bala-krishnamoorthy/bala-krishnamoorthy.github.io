
GetProfile and Mutate
=====================

02/05/06
--------


Usage
-----

Compiled using g++ : > g++ GetProfile.C -o GetProfile        ......(0)

Default usage

  > GetProfile <PDBFILE> [chain] [outputfile]

Examples
  > GetProfile 1erx.pdb A                                    ......(1)
  > GetProfile 2acy.pdb 2acyprofile                          ......(2)

If the PDBFILE has no chain identifier, the argument 'chain' could be
omitted. But if the PDBFILE has more than one (or at least one) chain
identifier, the chain that is to be scored should be specified (as
shown above in (1)). For the case of no chain identifier, one could
give the dummy argument of '_' (underscore) too. So, we could give

  > GetProfile 2acy.pdb _ 2acyprofile                        ......(3)



Notes and additional options
----------------------------

This program takes as input a PDB file and a chain identifier
(optional). It calculates the weighted total log-likelihood score
using the four-body statistical pseudo-potentials [1]. This score is
written to the standard output (cout). If an 'outputfile' is specified
in the command line, the residue-wise log-likelihood profile of the
protein, the number of neighbors for each residue in the Delaunay
tessellation of the protein, and the list of neighbors (residue
numbers) of each residue is written to the 'outputfile'.


   By default, each residue is represented by its sidechain center.
All the 20 amino acids are used individually. A distance cut-off of
10A is used for the edges of the Delaunay tessellation.  Also, all
five classes of tetrahedra are used for scoring the protein.

The alternate settings available for scoring are the following.

1. C-alpha or C-beta atoms could be used instead of SC-centers.
2. A reduced six (6) type-definition could be used for grouping the 
   20 amino acids into 6 types.
3. A(ny) different cut-off distance could be specified in the range
   6.5 A to 15 A.
   (the results are not accurate for cut-offs smaller than 6.5 A; and 
   the results are almost identical to those using 15 A cut-off when 
   the cut-off distance is specified to be higher than 15 A).
4. Any subset of the five classes of tetrahedra could be used for
   scoring.
   

To use any combination of these alternate settings, appropriate
arguments should be specified in the command line following the
pdbfile name (which should be the second command line argument). The
order in which the options are specified is immaterial expect for one
restriction - when giving the number of classes of tetrahedra to be
used for scoring, that number should immediately be followed by the
actual classes of tetrahedra to be used (see (8) below).


Thus, to score using C-alpha's instead of SC-centers (and the rest of
the options being the default ones), one could give

  > GetProfile 2acy.pdb ca                                   ......(4)
  > GetProfile 1erx.pdb ca A 1erxprofile                     ......(5)

If you want to score using C-beta's, but using the reduced 6-type
definition of amino acids and a cut-off distance of 8.5 A, and want
the profile to be written to file, the command could be

  > GetProfile 2acy.pdb 2acyprofile cb 6 8.5                 ......(6)


To re-confirm, the following command does the same thing as (1)

  > GetProfile 1erx.pdb sc A 10.0 20                         ......(7)


To use only a subset of the five classes of tetrahedra for scoring,
the number of classed to be used followed by the individual classes to
be used should be given as command line arguments. Thus, to use only
the three classes 0,2 and 3 for scoring, the command could be

  > GetProfile 1erx.pdb A 3 2 0 3                            ......(8)


The order in which the individual classes to be used are specified is
immaterial.


And to use only non-bonded tetrahedra (class 0) to score using
C-alpha's and to write the profile to file, the command could be

  > GetProfile 2acy.pdb 2acyprofile ca 20 10.0 1 0           ......(9)


If the PDB file happens to have only C-alpha and C-beta atoms,
choosing the sc option would scoring the centroid of both these atoms
(for each residue).  If a residue identity is different from the
standard 20 amino acid names, the program would give and error.

The weighted total log-likelihood score is written to stdout (or
cout). Some additional info (like the name of the pdb read, number of
atoms read, number of residues scored etc) is written to stderr (or
cerr). Hence, by redirecting the output to a file (using > or >> at
the command line), the weighted total log-likelihood score alone would
be written to that file.


The command line options are identical for Mutate. The program prompts
the user to input the mutation details. Again, the native score and
the difference due to mutation (mutated structure's score - native
score) are written to stdout.



References
----------

[1] Krishnamoorthy B. and Tropsha A., 2003. "Development of a 
    Four-Body Statistical Pseudo-Potential to Discriminate Native 
    from Non-Native Protein Conformations.", Bioinformatics, 
    Vol 19, issue 12, p1540-1548.




Contact
-------

Bala Krishnamoorthy
kbala@wsu.edu

