Shen et al., 2020. 
Rhizosphere Soil is Key to the Uptake of Antibiotics by Lettuce (Lactuca sativa)
DOI: https://doi.org/10.1016/j.chemosphere.2020.127677

Please email me at "ys3419@columbia.edu" if you have questions with regard to this publication

Disclaimer: 
- I support reproducible and efficient data processing pipelines. Even for very simple antibiotics calculation here :)
- This calculation can also be performed at excel and other softwares.
- Using my python work flow, you don't need to drag excel sheets, the whole calculation only took 1 minute! If you want to modify some calculation, simply change them in the ".ipynb" workflow, rerun the script, 1 minute, done!
- If you are not comfortable with looping over multiple antibiotics/chemicals here, take out the loop, the main chunck works for individual chemicals. 


Files: 
1.Input excel data sheets (.xlsx) including calculated LC-MS/MS antibiotics concentration from matrix matched standard curve for step2 calculation

2.Jupyter ipython notebook workflow (.ipynb) to analyze 9 antibiotics results from LC-MS/MS
    1) Concentration in bulk soil, rhizosphere soil, lettuce roots, and lettuce shoots
    2) Root concentration factor - bulk soil and rhizosphere based
    3) Translocation factor
    4) Total mass recovery

3.Antibiotics Summary file (.csv) from step2 calculation results(auto_output), input for step4 graphics. 

4.R Markdown workflow (.Rmd) for graphics

5.Averaged RCF and TF R graphics (.R) in the paper
