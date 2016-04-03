# CodeBook


## Variables
The following dataset (tidy.csv) conteins following variables:

 [1] "subject"                   "activity"                  "tBodyAcc-mean-X"          
 [4] "tBodyAcc-mean-Y"           "tBodyAcc-mean-Z"           "tBodyAcc-std-X"           
 [7] "tBodyAcc-std-Y"            "tBodyAcc-std-Z"            "tGravityAcc-mean-X"       
[10] "tGravityAcc-mean-Y"        "tGravityAcc-mean-Z"        "tGravityAcc-std-X"        
[13] "tGravityAcc-std-Y"         "tGravityAcc-std-Z"         "tBodyAccJerk-mean-X"      
[16] "tBodyAccJerk-mean-Y"       "tBodyAccJerk-mean-Z"       "tBodyAccJerk-std-X"       
[19] "tBodyAccJerk-std-Y"        "tBodyAccJerk-std-Z"        "tBodyGyro-mean-X"         
[22] "tBodyGyro-mean-Y"          "tBodyGyro-mean-Z"          "tBodyGyro-std-X"          
[25] "tBodyGyro-std-Y"           "tBodyGyro-std-Z"           "tBodyGyroJerk-mean-X"     
[28] "tBodyGyroJerk-mean-Y"      "tBodyGyroJerk-mean-Z"      "tBodyGyroJerk-std-X"      
[31] "tBodyGyroJerk-std-Y"       "tBodyGyroJerk-std-Z"       "tBodyAccMag-mean"         
[34] "tBodyAccMag-std"           "tGravityAccMag-mean"       "tGravityAccMag-std"       
[37] "tBodyAccJerkMag-mean"      "tBodyAccJerkMag-std"       "tBodyGyroMag-mean"        
[40] "tBodyGyroMag-std"          "tBodyGyroJerkMag-mean"     "tBodyGyroJerkMag-std"     
[43] "fBodyAcc-mean-X"           "fBodyAcc-mean-Y"           "fBodyAcc-mean-Z"          
[46] "fBodyAcc-std-X"            "fBodyAcc-std-Y"            "fBodyAcc-std-Z"           
[49] "fBodyAccJerk-mean-X"       "fBodyAccJerk-mean-Y"       "fBodyAccJerk-mean-Z"      
[52] "fBodyAccJerk-std-X"        "fBodyAccJerk-std-Y"        "fBodyAccJerk-std-Z"       
[55] "fBodyGyro-mean-X"          "fBodyGyro-mean-Y"          "fBodyGyro-mean-Z"         
[58] "fBodyGyro-std-X"           "fBodyGyro-std-Y"           "fBodyGyro-std-Z"          
[61] "fBodyAccMag-mean"          "fBodyAccMag-std"           "fBodyBodyAccJerkMag-mean" 
[64] "fBodyBodyAccJerkMag-std"   "fBodyBodyGyroMag-mean"     "fBodyBodyGyroMag-std"     
[67] "fBodyBodyGyroJerkMag-mean" "fBodyBodyGyroJerkMag-std" 

##  Abbraviations
The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation


## Activity Labels

* WALKING (value 1): subject was walking during the test
* WALKING_UPSTAIRS (value 2): subject was walking up a staircase during the test
* WALKING_DOWNSTAIRS (value 3): subject was walking down a staircase during the test
* SITTING (value 4): subject was sitting during the test
* STANDING (value 5): subject was standing during the test
* LAYING (value 6): subject was laying down during the test
