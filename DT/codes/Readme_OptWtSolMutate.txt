Optimized Solubility Mutagenesis
================================

(Default) Usage

  > ./optWtSolMutate.exe <PDBLIST>
  > ./optWtSolMutate.exe <PDBLIST> [Profile]
  > ./optWtSolMutate.exe <PDBLIST>  <  <inputfile>

PDBLIST is a text file with the PDB names (4-character code) and
corresponding chain identifiers (use '_' if no chain identifier
specified), listed one below the other, as follows:

2CI2 I
2CI2 I
2ACY _
2ACY _
2ACY _
1AHT H
1LBD _
...


If you want to score multiple mutants of the same PDB chain, then the
PDB code and chain have to be repeated as many times. In the example
above, the program will score two mutants of 2CI2, three of 2ACY, and
then one each of 1AHT and 1LBD.

For each PDB, the program asks the user to input the number of
residues to be mutated, followed by the list of the residues in the
following format: 3 24 ALA 59 TYR 134 ARG (for example).


Options available for the DT-based scoring functions can be used for
optWtSolMutate as well (whenever applicable). Thus, to score a bunch
of mutants using C-alpha coordinates, 11.2 A distance cut-off, using
only the buriedness classes 0,2,3 (instead of all classes 0-4), one
can say

  > ./optWtSolMutate.exe  list_solmut.txt ca 11.2 buried 3 0 2 3


To score several mutants in one go, all the required input could be
written up in a text file and fed to the program as input at the
command line. Consider the following list of mutants:

1. In 2ACY _, change 24 to ALA, 59 to TYR
2. In 2ACY _, change 33 to LEU, 81 to MET, 89 to ARG
3. In 1ERX A, change residues 23, 48, and 81 to GLY
4. In 2CI2 I, change residue 39 to LEU.

Create a list of PDBs and chains (named list_solmut.txt.txt, say) which
looks like the following:

2ACY _
2ACY _
1ERX A
2CI2 I


Then create a text file containing all the mutation information (named
input_mutate.txt) as follows:

2 24 ALA 59 TYR
3 33 LEU 81 MET 89 ARG
3 23 GLY 48 GLY 81 GLY
1 39 LEU

Notice that the first entry in each line gives the number of amino
acids mutated in each case.

Give the following command:

  > ./optWtSolMutate.exe  list_solmut.txt < input_mutate.txt

The program will take all the input from the file inputmutate (instead
of the user interactively typing in the items one by one).


All the output from the program is written to the screen by default.
To save the output to a file, use the redirection sign '>', and
provide a filename after that, as illustrated below:


  > ./optWtSolMutate.exe  list_solmut.txt < input_mutate.txt > outputmutate.txt


If you want to append the output to an output file (and not overwrite
it), use >> instead of >.

  > ./optWtSolMutate.exe  list_solmut.txt Profile < input_mutate.txt >> outputmutate.txt
