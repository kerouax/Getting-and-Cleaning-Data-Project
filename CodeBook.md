## Human Activity Recognition Using Smartphones dataset codebook 


### Script overview

1. Script sets the local working directory and cleans the workspace
2. It downloads the data from the provided URL and unzips it into working directory.
3. For both the test and training data it:
    + Assembles the datasets
    + Adds descriptive labels for the activities
    + Merges both datasets into one
    + Cleans up the variable names
4. Extracts only the measurements on the mean and standard deviation for each measurement
5. Adds SubjectID and ActivityID variables to the dataset
6. Produces the clean dataset by applying the mean function to each vector of values in each subject/activity pair.
7. Writes the clean dataset to text file on the disk.

The resulting clean dataset contains one row for each subject/activity pair and averaged each feature that was a mean or standard deviation from the original dataset.

### ID Fields

•	SubjectID - The participant ("subject") ID

•	ActivityID - The label of the activity performed when the corresponding measurements were taken


### Extracted Feature Fields

•	AverageTimeBodyAccelerometerMean-X                            
•	AverageTimeBodyAccelerometerMean-Y                            
•	AverageTimeBodyAccelerometerMean-Z                            
•	AverageTimeBodyAccelerometerStdDev-X                          
•	AverageTimeBodyAccelerometerStdDev-Y                          
•	AverageTimeBodyAccelerometerStdDev-Z                          
•	AverageTimeGravityAccelerometerMean-X                         
•	AverageTimeGravityAccelerometerMean-Y                         
•	AverageTimeGravityAccelerometerMean-Z                         
•	AverageTimeGravityAccelerometerStdDev-X                       
•	AverageTimeGravityAccelerometerStdDev-Y                       
•	AverageTimeGravityAccelerometerStdDev-Z                       
•	AverageTimeBodyAccelerometerJerkingMean-X                     
•	AverageTimeBodyAccelerometerJerkingMean-Y                     
•	AverageTimeBodyAccelerometerJerkingMean-Z                     
•	AverageTimeBodyAccelerometerJerkingStdDev-X                   
•	AverageTimeBodyAccelerometerJerkingStdDev-Y                   
•	AverageTimeBodyAccelerometerJerkingStdDev-Z                   
•	AverageTimeBodyGyroscopeMean-X                                
•	AverageTimeBodyGyroscopeMean-Y                                
•	AverageTimeBodyGyroscopeMean-Z                                
•	AverageTimeBodyGyroscopeStdDev-X                              
•	AverageTimeBodyGyroscopeStdDev-Y                              
•	AverageTimeBodyGyroscopeStdDev-Z                              
•	AverageTimeBodyGyroscopeJerkingMean-X                         
•	AverageTimeBodyGyroscopeJerkingMean-Y                         
•	AverageTimeBodyGyroscopeJerkingMean-Z                         
•	AverageTimeBodyGyroscopeJerkingStdDev-X                       
•	AverageTimeBodyGyroscopeJerkingStdDev-Y                       
•	AverageTimeBodyGyroscopeJerkingStdDev-Z                       
•	AverageTimeBodyAccelerometerMagnitudeMean                     
•	AverageTimeBodyAccelerometerMagnitudeStdDev                   
•	AverageTimeGravityAccelerometerMagnitudeMean                  
•	AverageTimeGravityAccelerometerMagnitudeStdDev                
•	AverageTimeBodyAccelerometerJerkingMagnitudeMean              
•	AverageTimeBodyAccelerometerJerkingMagnitudeStdDev            
•	AverageTimeBodyGyroscopeMagnitudeMean                         
•	AverageTimeBodyGyroscopeMagnitudeStdDev                       
•	AverageTimeBodyGyroscopeJerkingMagnitudeMean                  
•	AverageTimeBodyGyroscopeJerkingMagnitudeStdDev                
•	AverageFrequencyBodyAccelerometerMean-X                       
•	AverageFrequencyBodyAccelerometerMean-Y                       
•	AverageFrequencyBodyAccelerometerMean-Z                       
•	AverageFrequencyBodyAccelerometerStdDev-X                     
•	AverageFrequencyBodyAccelerometerStdDev-Y                     
•	AverageFrequencyBodyAccelerometerStdDev-Z                     
•	AverageFrequencyBodyAccelerometerMeanFrequency-X              
•	AverageFrequencyBodyAccelerometerMeanFrequency-Y              
•	AverageFrequencyBodyAccelerometerMeanFrequency-Z              
•	AverageFrequencyBodyAccelerometerJerkingMean-X                
•	AverageFrequencyBodyAccelerometerJerkingMean-Y                
•	AverageFrequencyBodyAccelerometerJerkingMean-Z                
•	AverageFrequencyBodyAccelerometerJerkingStdDev-X              
•	AverageFrequencyBodyAccelerometerJerkingStdDev-Y              
•	AverageFrequencyBodyAccelerometerJerkingStdDev-Z              
•	AverageFrequencyBodyAccelerometerJerkingMeanFrequency-X       
•	AverageFrequencyBodyAccelerometerJerkingMeanFrequency-Y       
•	AverageFrequencyBodyAccelerometerJerkingMeanFrequency-Z       
•	AverageFrequencyBodyGyroscopeMean-X                           
•	AverageFrequencyBodyGyroscopeMean-Y                           
•	AverageFrequencyBodyGyroscopeMean-Z                           
•	AverageFrequencyBodyGyroscopeStdDev-X                         
•	AverageFrequencyBodyGyroscopeStdDev-Y                         
•	AverageFrequencyBodyGyroscopeStdDev-Z                         
•	AverageFrequencyBodyGyroscopeMeanFrequency-X                  
•	AverageFrequencyBodyGyroscopeMeanFrequency-Y                  
•	AverageFrequencyBodyGyroscopeMeanFrequency-Z                  
•	AverageFrequencyBodyAccelerometerMagnitudeMean                
•	AverageFrequencyBodyAccelerometerMagnitudeStdDev              
•	AverageFrequencyBodyAccelerometerMagnitudeMeanFrequency       
•	AverageFrequencyBodyAccelerometerJerkingMagnitudeMean         
•	AverageFrequencyBodyAccelerometerJerkingMagnitudeStdDev       
•	AverageFrequencyBodyAccelerometerJerkingMagnitudeMeanFrequency
•	AverageFrequencyBodyGyroscopeMagnitudeMean                    
•	AverageFrequencyBodyGyroscopeMagnitudeStdDev                  
•	AverageFrequencyBodyGyroscopeMagnitudeMeanFrequency           
•	AverageFrequencyBodyGyroscopeJerkingMagnitudeMean             
•	AverageFrequencyBodyGyroscopeJerkingMagnitudeStdDev           
•	AverageFrequencyBodyGyroscopeJerkingMagnitudeMeanFrequency   
 
 
### Activity Labels

•	WALKING
•	WALKING_UPSTAIRS
•	WALKING_DOWNSTAIRS
•	SITTING
•	STANDING
•	LAYING
