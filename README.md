This repository contains the numerical simulation code and data along with 
the code for analysing this data and generating the figures for
Kell B., Ripsman R., Hilfinger A.
'Noise Properties of Adaptation-conferring Biochemical Control Modules'.
PNAS (2023).

All numerical simulation code is written in C++ using the C++11 standard,
and can be compiled using  Make to call the makefile. This results in the 
programs 'AIF_three_components' and 'AIF_four_components' to simulate the 
three- and four-component AIFsystems considered in the manuscript. 
See the corresponding .cpp files for a description of the input arguments required. 
Parameters used to generate the data in this study can be found in ./RawData 
in the files ending in '_PARAMETERS.bin'. The corresponding numerical data 
can be found in ./RawData in the files ending in '_STATISTICS.bin'. 
The parameters and statistics files can be read into MATLAB using the scripts 
'read_AIF_XX_components_parameters.m' and 'read_AIF_XX_components_statistics.m', 
respectively, where XX = three, four. 
See 'Idealized_Reference_Actuated_System_Analysis.m' for an example. 

Data analysis was performed in MATLAB R2020b. The data analysis scripts for
each three-component system are named '<The_System>_Analysis.m' and those for each
four-component system are named '<The_System>_Analysis_4comp.m'. For example, the
analysis script for the idealized three-component reference-actuated AIF system
is 'Idealized_Reference_Actuated_System_Analysis.m'.  

The reseeding analysis for the idealized three-component systems is implemented
in their corresponding analysis scripts. For the non-idealized three-component
reference-actuated AIF system, the reseeding analysis takes place in 
'Fig3B_with_reseeding.m'. The reseeding analysis for the idealized four-component
systems in implemented in 'rAIF_reseed_4comp.m' and 'sAIF_reseed_4comp.m'.
For the non-idealized four-component sensor-actuated AIF system, the reseeding
analysis takes place in 'sensitivity_reseed_4comp.m'. All of these reseeding
scripts generate the corresponding error analysis plots included in the 
supplementary information for the manuscript. 

The main text figure panels can be generated by running 'FigXX.m', where 
XX = 2,3,4. These plotting scripts call on density-adjusted data sets in 
./DataForPlotting. These density-adjusted data sets where created through
random sampling of the full data sets using the Mathematica notebooks
'density-adjustment-function-XX.nb', where XX specifies the figure panel.
These notebooks call on the full data set for each figure stored in text files, 
which were generated from the commented-out lines at the end of each respective 
analysis script. 

Similarly, the panels for supplementary figures for the three-component systems 
can be generated using the scripts 'SI_plot_XX.m', where XX specified the figure.
An analogous density adjustement process as described for the main text figures
was used for these supplementary figures, except for XX =  SPtrackingError_Plot,
noise_supp_param_analysis, where the interpretation of the plot depends on the
density. The supplementary figures for the four-component system can be generated
from the analysis scripts for these systems and no density adjustment was performed for
these plots out of convenience. 

Note: The density adjusted data is simply to illustrate the accessible space
in an aesthetic manner. Verifcation/rejection of potential outlier points
relied on an analysis of the full data sets, not the density adjusted data sets. 

All Mathematica calculations referred to in the supplementary information 
are contained in SupplementaryDerivations.nb. This notebook also generated
panel C of Fig. S3. 

Note: the Mathematica notebooks contained in this respository were developed 
and executed in Wolfram Mathematica 12. 