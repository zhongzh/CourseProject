## Code Book

Source data is from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. See the [README](README.md) for additional details.

## Tidy Means

A data.table named `tidy_means` is set with the following columns. All units are from the original data set. A file named tidy_means.txt is written from run_analysis.R that averages each variable below by Subject and Activity.

| Column                                                     | Original Name                   |
| -----------------------------------------------------------| --------------------------------|
| Subject                                                    |                                 |
| Activity                                                   |                                 |
| TimeDom.BodyAcceleration.Mean.X                            | tBodyAcc-mean()-X               |               
| TimeDom.BodyAcceleration.Mean.Y                            | tBodyAcc-mean()-Y               |           
| TimeDom.BodyAcceleration.Mean.Z                            | tBodyAcc-mean()-Z               |          
| TimeDom.BodyAcceleration.StdDev.X                          | tBodyAcc-std()-X                |         
| TimeDom.BodyAcceleration.StdDev.Y                          | tBodyAcc-std()-Y                |        
| TimeDom.BodyAcceleration.StdDev.Z                          | tBodyAcc-std()-Z                |         
| TimeDom.GravityAcceleration.Mean.X                         | tGravityAcc-mean()-X            |           
| TimeDom.GravityAcceleration.Mean.Y                         | tGravityAcc-mean()-Y            |           
| TimeDom.GravityAcceleration.Mean.Z                         | tGravityAcc-mean()-Z            |           
| TimeDom.GravityAcceleration.StdDev.X                       | tGravityAcc-std()-X             |        
| TimeDom.GravityAcceleration.StdDev.Y                       | tGravityAcc-std()-Y             |        
| TimeDom.GravityAcceleration.StdDev.Z                       | tGravityAcc-std()-Z             |        
| TimeDom.BodyAccelerationJerk.Mean.X                        | tBodyAccJerk-mean()-X           |           
| TimeDom.BodyAccelerationJerk.Mean.Y                        | tBodyAccJerk-mean()-Y           |           
| TimeDom.BodyAccelerationJerk.Mean.Z                        | tBodyAccJerk-mean()-Z           |           
| TimeDom.BodyAccelerationJerk.StdDev.X                      | tBodyAccJerk-std()-X            |        
| TimeDom.BodyAccelerationJerk.StdDev.Y                      | tBodyAccJerk-std()-Y            |        
| TimeDom.BodyAccelerationJerk.StdDev.Z                      | tBodyAccJerk-std()-Z            |        
| TimeDom.BodyAngularSpeed.Mean.X                            | tBodyGyro-mean()-X              |              
| TimeDom.BodyAngularSpeed.Mean.Y                            | tBodyGyro-mean()-Y              |              
| TimeDom.BodyAngularSpeed.Mean.Z                            | tBodyGyro-mean()-Z              |              
| TimeDom.BodyAngularSpeed.StdDev.X                          | tBodyGyro-std()-X               |          
| TimeDom.BodyAngularSpeed.StdDev.Y                          | tBodyGyro-std()-Y               |          
| TimeDom.BodyAngularSpeed.StdDev.Z                          | tBodyGyro-std()-Z               |          
| TimeDom.BodyAngularAcceleration.Mean.X                     | tBodyGyroJerk-mean()-X          |                    
| TimeDom.BodyAngularAcceleration.Mean.Y                     | tBodyGyroJerk-mean()-Y          |                    
| TimeDom.BodyAngularAcceleration.Mean.Z                     | tBodyGyroJerk-mean()-Z          |                    
| TimeDom.BodyAngularAcceleration.StdDev.X                   | tBodyGyroJerk-std()-X           |                  
| TimeDom.BodyAngularAcceleration.StdDev.Y                   | tBodyGyroJerk-std()-Y           |                  
| TimeDom.BodyAngularAcceleration.StdDev.Z                   | tBodyGyroJerk-std()-Z           |                 
| TimeDom.BodyAccelerationMagnitude.Mean                     | tBodyAccMag-mean()              |     
| TimeDom.BodyAccelerationMagnitude.StdDev                   | tBodyAccMag-std()               |  
| TimeDom.GravityAccelerationMagnitude.Mean                  | tGravityAccMag-mean()           |    
| TimeDom.GravityAccelerationMagnitude.StdDev                | tGravityAccMag-std()            |   
| TimeDom.BodyAccelerationJerkMagnitude.Mean                 | tBodyAccJerkMag-mean()          |    
| TimeDom.BodyAccelerationJerkMagnitude.StdDev               | tBodyAccJerkMag-std()           | 
| TimeDom.BodyAngularSpeedMagnitude.Mean                     | tBodyGyroMag-mean()             |      
| TimeDom.BodyAngularSpeedMagnitude.StdDev                   | tBodyGyroMag-std()              |    
| TimeDom.BodyAngularAccelerationMagnitude.Mean              | tBodyGyroJerkMag-mean()         |    
| TimeDom.BodyAngularAccelerationMagnitude.StdDev            | tBodyGyroJerkMag-std()          |
| FrequencyDom.BodyAcceleration.Mean.X                       | fBodyAcc-mean()-X               |                      
| FrequencyDom.BodyAcceleration.Mean.Y                       | fBodyAcc-mean()-Y               |                      
| FrequencyDom.BodyAcceleration.Mean.Z                       | fBodyAcc-mean()-Z               |                      
| FrequencyDom.BodyAcceleration.StdDev.X                     | fBodyAcc-std()-X                |                    
| FrequencyDom.BodyAcceleration.StdDev.Y                     | fBodyAcc-std()-Y                |                    
| FrequencyDom.BodyAcceleration.StdDev.Z                     | fBodyAcc-std()-Z                |                  
| FrequencyDom.BodyAcceleration.MeanFreq.X                   | fBodyGyro-meanFreq()-X          |                  
| FrequencyDom.BodyAcceleration.MeanFreq.Y                   | fBodyGyro-meanFreq()-Y          |                  
| FrequencyDom.BodyAcceleration.MeanFreq.Z                   | fBodyGyro-meanFreq()-Z          |                  
| FrequencyDom.BodyAccelerationJerk.Mean.X                   | fBodyAccJerk-mean()-X           |                  
| FrequencyDom.BodyAccelerationJerk.Mean.Y                   | fBodyAccJerk-mean()-Y           |                  
| FrequencyDom.BodyAccelerationJerk.Mean.Z                   | fBodyAccJerk-mean()-Z           |                 
| FrequencyDom.BodyAccelerationJerk.StdDev.X                 | fBodyAccJerk-std()-x            |                
| FrequencyDom.BodyAccelerationJerk.StdDev.Y                 | fBodyAccJerk-std()-Y            |                
| FrequencyDom.BodyAccelerationJerk.StdDev.Z                 | fBodyAccJerk-std()-Z            |                
| FrequencyDom.BodyAccelerationJerk.MeanFreq.X               | fBodyAccJerk-meanFreq()-X       |              
| FrequencyDom.BodyAccelerationJerk.MeanFreq.Y               | fBodyAccJerk-meanFreq()-Y       |              
| FrequencyDom.BodyAccelerationJerk.MeanFreq.Z               | fBodyAccJerk-meanFreq()-Z       |      
| FrequencyDom.BodyAngularSpeed.Mean.X                       | fBodyGyro-mean()-X              |        
| FrequencyDom.BodyAngularSpeed.Mean.Y                       | fBodyGyro-mean()-Y              |      
| FrequencyDom.BodyAngularSpeed.Mean.Z                       | fBodyGyro-mean()-Z              |      
| FrequencyDom.BodyAngularSpeed.StdDev.X                     | fBodyGyro-std()-X               |   
| FrequencyDom.BodyAngularSpeed.StdDev.Y                     | fBodyGyro-std()-Y               |   
| FrequencyDom.BodyAngularSpeed.StdDev.Z                     | fBodyGyro-std()-Z               |    
| FrequencyDom.BodyAngularSpeed.MeanFreq.X                   | fBodyGyro-meanFreq()-X          |      
| FrequencyDom.BodyAngularSpeed.MeanFreq.Y                   | fBodyGyro-meanFreq()-Y          |       
| FrequencyDom.BodyAngularSpeed.MeanFreq.Z                   | fBodyGyro-meanFreq()-Z          |      
| FrequencyDom.BodyAccelerationMagnitude.Mean                | fBodyAccMag-mean()              |
| FrequencyDom.BodyAccelerationMagnitude.StdDev              | fBodyAccMag-std()               |
| FrequencyDom.BodyAccelerationMagnitude.MeanFreq            | fBodyAccMag-meanFreq()          |
| FrequencyDom.BodyBodyAccelerationJerkMagnitude.Mean        | fBodyBodyAccJerkMag-mean()      |
| FrequencyDom.BodyBodyAccelerationJerkMagnitude.StdDev      | fBodyBodyAccJerkMag-std()       |
| FrequencyDom.BodyBodyAccelerationJerkMagnitude.MeanFreq    | fBodyBodyAccJerkMag-meanFreq()  |
| FrequencyDom.BodyBodyAngularSpeedMagnitude.Mean            | fBodyBodyGyroMag-mean()         |
| FrequencyDom.BodyBodyAngularSpeedMagnitude.StdDev          | fBodyBodyGyroMag-std()          |
| FrequencyDom.BodyBodyAngularSpeedMagnitude.MeanFreq        | fBodyBodyGyroMag-meanFreq()     | 
| FrequencyDom.BodyBodyAngularAccelerationMagnitude.Mean     | fBodyBodyGyroJerkMag-mean()     |   
| FrequencyDom.BodyBodyAngularAccelerationMagnitude.StdDev   | fBodyBodyGyroJerkMag-std()      | 
| FrequencyDom.BodyBodyAngularAccelerationMagnitude.MeanFreq | fBodyBodyGyroJerkMag-meanFreq() |