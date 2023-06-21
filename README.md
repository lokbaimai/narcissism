### The neighborhood component analysis (NCA) on narcissism and other traits
This is the source code of our submission to the Social Neuroscience Journal. The analysis is based on the neighborhood component process of machine learning. 

### Title: Predicting Narcissistic Personality Traits from Brain and Psychological Features: A Supervised Machine Learning Approach 

### Authors:
Khanitin Jornkokgoud<sup>1</sup>, Teresa Baggio<sup>2</sup>, Md Faysal<sup>2</sup>, Richard Bakiaj<sup>2</sup>, Peera Wongupparaj<sub>1</sup>, Remo Job<sup>2,3</sup>, Alessandro Grecucci<sup>2,3</sup>

<sup>1</sup>Cognitive Science and Innovation Research Unit (CSIRU), College of Research Methodology and Cognitive Science (RMCS), Burapha University, Thailand; 
<sup>2</sup>Department of Psychology and Cognitive Sciences (DiPSCo), University of Trento, Italy; 
<sup>3</sup>Centre for Medical Sciences (CISMed), University of Trento, Italy

### Research question
Whether other normal and abnormal personality traits are associated with and can be used to predict narcissism. 

#### Tools and Requirements
Tools used in this work:
  * `MATLAB R2018 `
    
#### Source Data
Questionnaire data were extracted from the MPI-Leipzig Mind Brain-Body dataset (OpenNeuro database, Accession Number: ds000221) (Babayan et al., 2020)
Three questionnaires are the Personality Style and Disorder Inventory (PSSI), the Short Dark Triad (SD3), and the Revised Neo Personality Inventory (NEO-PI-R).

#### Source code process description
It is only one file of NCA_feature_selection.m for execution.
Before running the script, please ensure you prepared two variables by inputting the narcissism scale into the X variable, and other scales into the y variable.

#### Reference
Babayan, A., Baczkowski, B., Cozatl, R., Dreyer, M., Engen, H., Erbey, M., Falkiewicz, M., Farrugia, N., Gaebler, M., Golchert, J., Golz, L., Gorgolewski, K., Haueis, P., Huntenburg, J., Jost, R., Kramarenko, Y., Krause, S., Kumral, D., Lauckner, M., Margulies, D. S., Mendes, N., Ohrnberger, K., Oligschläger, S., Osoianu, A., Pool, J., Reichelt, J., Reiter, A., Röbbig, J., Schaare, L., Smallwood, J., & Villringer, A. (2020). "MPI-Leipzig_Mind-Brain-Body" OpenNeuro. https://doi.org/10.18112/openneuro.ds000221.v1.0.0
