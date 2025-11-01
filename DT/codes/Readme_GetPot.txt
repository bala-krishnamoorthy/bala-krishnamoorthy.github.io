
GetPot.C
========
02/02/06
--------

Usage
-----

Compiled using g++ : > g++ GetPot.C -o GetPot                 .....(0)

Default usage

  > GetPot <PDBLIST> [outputfile]                             .....(1)

Examples
  > GetPot list_pdbs					      .....(2)	
  > GetPot list_pdbs Pot_File.dat			      .....(3)

The file PDBLIST must list all the PDB ids and the chains to be
used as follows: 

1P0I A
1ub4 I
1CLC _
...

Note the the pdb ids are case-sensitive: if you have the pdb file
stored as IUB4.pdb, then you should give "1UB4 I" and not "1ub4 I".
Also, if there is no chain identifier, you must give a "_"
(underscore). This set-up assumes that the PDB files are stored in the
same directory as the PDBLIST and the executable GetPot. One could 
specify the full path for each PDB file in the PDBLIST if they
are not located in the current directory.

If a filename is not specified for writing the table of log-likelihood
ratios, the results will be written to the file "FourPot_Table.dat".



Notes and additional options
----------------------------

	This program takes as input a lis of PDB chains. It calculates
the log-likelihood ratios for the four-body statistical
pseudo-potentials [1]. By default, each residue is represented by its
sidechain center. All the 20 amino acids are used individually. A
distance cut-off of 10A is used for the edges of the Delaunay
tessellation.

The alternate settings available for calculating the pseudo-potentials
are the following.

1. C-alpha or C-beta atoms could be used instead of SC-centers.
2. A reduced six (6) type-definition could be used for grouping the 
   20 amino acids into 6 types.
3. A(ny) different cut-off distance could be specified in the range
   6.5 A to 15 A.
   (the results are not accurate for cut-offs smaller than 6.5 A; and 
    the results are almost identical to those using 15 A cut-off when the
    cut-off distance is specified to be higher than 15 A).
   
To use any combination of these alternate settings, appropriate
arguments should be specified in the command line following the
PDBLIST file name (which would be the second command line
argument). The order in which the options are specified is immaterial.


Thus, to score using C-alpha's instead of SC-centers (and the rest of
the options being the default ones), one could give

  > GetPot pdb_list ca                                            ......(4)
  > GetPot pdb_list ca CA_PotList.dat                             ......(5)

If you want to score using C-beta's, but using the reduced 6-type definition
of amino acids and a cut-off distance of 8.5 A, and want the data to be
written to the default file FourPot_Table.dat, the command could be 

  > GetPot pdb_list cb 6 8.5                                      ......(6)


To re-confirm, the following command does the same thing as (3)

  > GetPot pdb_list sc 10.0 20 Pot_File.dat                       ......(7)



If a PDB file included in the PDBList happens to have only C-alpha and
C-beta atoms, choosing the sc option will use the centroid of both
these atoms (for each residue).  If a residue identity is different
from the standard 20 amino acid names, the program will give an
error.



References
----------

[1] Krishnamoorthy B. and Tropsha A., 2003. "Development of a Four-Body 
    Statistical Pseudo-Potential to Discriminate Native from Non-Native Protein 
    Conformations.", Bioinformatics, Vol 19, issue 12, p1540-1548.




Contact
-------

Bala Krishnamoorthy
kbala@wsu.edu

