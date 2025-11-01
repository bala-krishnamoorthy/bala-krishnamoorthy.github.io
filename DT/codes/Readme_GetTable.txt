Generating log-likelihood tables for DT-based scoring functions
===============================================================

Default usage

  > ./GetTable <PDBLIST> [outputfile]					....(1)

Examples
  > ./GetTable list_pdbs						....(2)	
  > ./GetTable list_pdbs Pot_File.dat					....(3)

The file PDBLIST lists all the PDB ids and the chains to be used, as
follows:

1P0I A
1ub4 I
1CLC _
...

Note the the pdb ids are case-sensitive: if you have the pdb file
stored as IUB4.pdb, then you should give "1UB4 I" and not "1ub4 I".
Also, if there is no chain identifier, you must give a "_"
(underscore). This set-up assumes that the PDB files are stored in the
same directory as PDBLIST and the executable ./GetTable. One could
specify the full path for each PDB file in PDBLIST if they are not
located in the current directory.

If a filename is not specified for writing the table of log-likelihood
ratios, the results will be written to the files Table_2BPots.txt,
Table_Buried_2BPots.txt, Table_3BPots.txt, Table_Buried_3BPots.txt, or
Table_4BPots.txt, as appropriate.



Notes and additional options
----------------------------

The programs take as input a list of PDB chains. They calculate the
log-likelihood ratios for the corresponding DT-based scoring
function. By default, each residue is represented by its sidechain
center. A distance cut-off of 10A is used for the edges of the
Delaunay tessellation. Other options available for the DT-based
scoring function can be used for the GetTable programs as well, except
for the use of a subclass of contacts. The tables are always generated
for all classes of contacts -- a subset of them could be used when
using the table for scoring a protein afterward.

Thus, to score using C-alpha's instead of SC-centers (and the rest of
the options being the default ones), one could give

  > ./GetTable pdb_list ca                                            ......(4)
  > ./GetTable pdb_list ca CA_PotList.txt                             ......(5)

If you want to score using C-beta's, but use a cut-off distance of 8.5
A, and want the data to be written to the default file
FourPot_Table.txt, the command could be

  > ./GetTable pdb_list cb 8.5 FourPot_Table.txt                      ......(6)


To re-confirm, the following command does the same thing as (3)

  > ./GetTable pdb_list sc 10.0 Pot_File.dat                          ......(7)


The program GetTables_3BPots.exe produces both the non-buried and
buried 3-body tables. For instance, if called with

  > ./GetTables_3BPots.exe  pdb_list table3b.txt                      ......(8)

the non-buried 3-body table is written to the file table3b.txt, and
the buried 3-body table is written to the file Buried_table3b.txt.
