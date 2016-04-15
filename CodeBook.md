# Description

This data was extracted from the Human Activity Recognition Using Smartphones Dataset, and comprises readings taken from
the an accelerometer and gyroscope while the subjest was "walking", "walking_upstairs", "walking_downstairs", "sitting",
"standing" and "laying".

## Source

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data being operated on can be found at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Modifications

The orginal data has undergone the following tansformations

1 - The test and training dat sets have been merged. 
2 - Only x variables associated with taking the mean or standard diviation have been kept.
2 - The numbered activities in the y variable have been replaced with the names of the associated activities.

## Format 

A data frame with 180 observations on 68 variables.

  [1] "subject"                                                       
 [2] "activity"                                                      
 [3] "time.body.accelerometer.mean.x"                                
 [4] "time.body.accelerometer.mean.y"                                
 [5] "time.body.accelerometer.mean.z"                                
 [6] "time.body.accelerometer.standard.deviation.x"                  
 [7] "time.body.accelerometer.standard.deviation.y"                  
 [8] "time.body.accelerometer.standard.deviation.z"                  
 [9] "time.gravity.accelerometer.mean.x"                             
[10] "time.gravity.accelerometer.mean.y"                             
[11] "time.gravity.accelerometer.mean.z"                             
[12] "time.gravity.accelerometer.standard.deviation.x"               
[13] "time.gravity.accelerometer.standard.deviation.y"               
[14] "time.gravity.accelerometer.standard.deviation.z"               
[15] "time.body.accelerometer.jerk.mean.x"                           
[16] "time.body.accelerometer.jerk.mean.y"                           
[17] "time.body.accelerometer.jerk.mean.z"                           
[18] "time.body.accelerometer.jerk.standard.deviation.x"             
[19] "time.body.accelerometer.jerk.standard.deviation.y"             
[20] "time.body.accelerometer.jerk.standard.deviation.z"             
[21] "time.body.gyroscope.mean.x"                                    
[22] "time.body.gyroscope.mean.y"                                    
[23] "time.body.gyroscope.mean.z"                                    
[24] "time.body.gyroscope.standard.deviation.x"                      
[25] "time.body.gyroscope.standard.deviation.y"                      
[26] "time.body.gyroscope.standard.deviation.z"                      
[27] "time.body.gyroscope.jerk.mean.x"                               
[28] "time.body.gyroscope.jerk.mean.y"                               
[29] "time.body.gyroscope.jerk.mean.z"                               
[30] "time.body.gyroscope.jerk.standard.deviation.x"                 
[31] "time.body.gyroscope.jerk.standard.deviation.y"                 
[32] "time.body.gyroscope.jerk.standard.deviation.z"                 
[33] "time.body.accelerometer.magnitude.mean"                        
[34] "time.body.accelerometer.magnitude.standard.deviation"          
[35] "time.gravity.accelerometer.magnitude.mean"                     
[36] "time.gravity.accelerometer.magnitude.standard.deviation"       
[37] "time.body.accelerometer.jerk.magnitude.mean"                   
[38] "time.body.accelerometer.jerk.magnitude.standard.deviation"     
[39] "time.body.gyroscope.magnitude.mean"                            
[40] "time.body.gyroscope.magnitude.standard.deviation"              
[41] "time.body.gyroscope.jerk.magnitude.mean"                       
[42] "time.body.gyroscope.jerk.magnitude.standard.deviation"         
[43] "frequency.body.accelerometer.mean.x"                           
[44] "frequency.body.accelerometer.mean.y"                           
[45] "frequency.body.accelerometer.mean.z"                           
[46] "frequency.body.accelerometer.standard.deviation.x"             
[47] "frequency.body.accelerometer.standard.deviation.y"             
[48] "frequency.body.accelerometer.standard.deviation.z"             
[49] "frequency.body.accelerometer.jerk.mean.x"                      
[50] "frequency.body.accelerometer.jerk.mean.y"                      
[51] "frequency.body.accelerometer.jerk.mean.z"                      
[52] "frequency.body.accelerometer.jerk.standard.deviation.x"        
[53] "frequency.body.accelerometer.jerk.standard.deviation.y"        
[54] "frequency.body.accelerometer.jerk.standard.deviation.z"        
[55] "frequency.body.gyroscope.mean.x"                               
[56] "frequency.body.gyroscope.mean.y"                               
[57] "frequency.body.gyroscope.mean.z"                               
[58] "frequency.body.gyroscope.standard.deviation.x"                 
[59] "frequency.body.gyroscope.standard.deviation.y"                 
[60] "frequency.body.gyroscope.standard.deviation.z"                 
[61] "frequency.body.accelerometer.magnitude.mean"                   
[62] "frequency.body.accelerometer.magnitude.standard.deviation"     
[63] "frequency.body.accelerometer.jerk.magnitude.mean"              
[64] "frequency.body.accelerometer.jerk.magnitude.standard.deviation"
[65] "frequency.body.gyroscope.magnitude.mean"                       
[66] "frequency.body.gyroscope.magnitude.standard.deviation"         
[67] "frequency.body.gyroscope.jerk.magnitude.mean"                  
[68] "frequency.body.gyroscope.jerk.magnitude.standard.deviation"    


