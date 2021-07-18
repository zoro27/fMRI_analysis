## surface searchlight
### Prepare:
   1) single or twin surfaces
      + 'Caret' and 'BrainVoyager' use a single surface - "grey matter" (but this may be not so precise)
      + FreeSurfer uses twin surfaces (pial and white)  
   2) GLM results
      + preprocess: time slice correlation, motion correction, coregistration of the anatomical image to the functional data, no smooth or nomalization(?)
      + each block(trials?) modeled as a regressor 
      + get beta img of these regressors
      
