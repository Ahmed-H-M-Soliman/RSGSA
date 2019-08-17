# RSGSA
Robust and Stable Gene Selection Algorithm

The "command" file contains a command to run the jar file. It has nine arguments:

(1) 1st argument corresponds to a gene-expression file. Rows corresponds to samples and columns corresponds to gene expression values. Please, look at the datasets.

(2) 2nd argument corresponds to whether we normalize the data. If "yes" the executable will normalize the data; "no" means no normalization.

(3) 3rd argument corresponds to noise (varies from 0.0 to 1.0) to be applied into SSVM-RFE.

(4) 4th argument corresponds to Pearson's r (varies from 0.0 to 1.0) for leader election.

(5) 5th argument corresponds to proportion of genes to be removed (varies from 0.0 to 1.0) from each recursive stage in SSVM-RFE. Please, avoid 0.0 value.

(6) 6th argument corresponds to number of LSVM in each recursive stage of SSVM-RFE.

(7) 7th argument corresponds to number of ensembles in RSGSA.

(8) 8th argument corresponds to out file name with absolute path. It will contain gene id (as column id) and its associated rank.

(9) 9th argument corresponds to whether we will use Self optimizing LSVM to automatically select the value of regularization parameter C. 
     - It can take a lot of time to finish the execution. 
	   - It takes 0/1 value as argument. We use "0" in our experiments (i.e., no optimization; C = 1.0).


"command" file contains the default values we used in the experiments. We should run the "command" file using the following commands in a linux shell:

chmod 777 *
nohup ./command > "<out_file_name>.txt" 2>&1 &

At the end the result will be found in <out_file_name>.txt file or in a file as is given in 8th argument.
