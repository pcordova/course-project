# Codebook:

## "*Getting and Cleaning Data*" final project.

##### Pedro Córdova

The original data was generated by a team from "Università di Genova".

|                  |                      |
|------------------|----------------------|
| Kind of Data     | Smartphone generated |
| Unit of Analysis | Individuals          |

There was a zipped file, downloaded from: [Link to Dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

The assignment consisted in merge data sets, extract relevant columns, use more descriptive names in rows and columns, and create a new data set containing the means of the original values.

The file "run_analysis.R" contains the code to do the needed work. Code is commented for better understanding

------------------------------------------------------------------------

### File Description:

The data set contains 1 file: "*meanTidyData.csv*"

|              |     |
|--------------|-----|
| Observations | 180 |
| Variables    | 68  |

------------------------------------------------------------------------

### Variables Description:

| Variable name               | Description |
|-----------------------------|-------------|
| subject                     |one number for each observed person (1-30)|
| activity                    |any of the 6 measured activities (walking, walk upstairs, walk downstairs, sitting, standing, laying)|
| timeBodyAccMean.X           |time = time, Body = subject body, Acc = acceleration, Mean = mean value, X = X axis             |
| timeBodyAccMean.Y           |same as above, plus Y = Y axis             |
| timeBodyAccMean.Z           |same as above, plus Z = Z axis             |
| timeGravityAccMean.X        |same as above plus Gravity = gravity acceleration             |
| timeGravityAccMean.Y        |tags as descrived above             |
| timeGravityAccMean.Z        |tags as descrived above             |
| timeBodyAccJerkMean.X       |same as above plus Jerk = jerk body signals             |
| timeBodyAccJerkMean.Y       |tags as descrived above             |
| timeBodyAccJerkMean.Z       |tags as descrived above             |
| timeBodyGyroMean.X          |same as above plus Gyro = gyroscope measured movements             |
| timeBodyGyroMean.Y          |tags as descrived above             |
| timeBodyGyroMean.Z          |tags as descrived above             |
| timeBodyGyroJerkMean.X      |tags as descrived above             |
| timeBodyGyroJerkMean.Y      |tags as descrived above             |
| timeBodyGyroJerkMean.Z      |tags as descrived above             |
| timeBodyAccMagMean          |same as above plus Mag = magnitude calculated using the Euclidean norm             |
| timeGravityAccMagMean       |tags as descrived above             |
| timeBodyAccJerkMagMean      |tags as descrived above             |
| timeBodyGyroMagMean         |tags as descrived above             |
| timeBodyGyroJerkMagMean     |tags as descrived above             |
| freqBodyAccMean.X           |same as above plus freq = frecuency             |
| freqBodyAccMean.Y           |tags as descrived above             |
| freqBodyAccMean.Z           |tags as descrived above             |
| freqBodyAccJerkMean.X       |tags as descrived above             |
| freqBodyAccJerkMean.Y       |tags as descrived above             |
| freqBodyAccJerkMean.Z       |tags as descrived above             |
| freqBodyGyroMean.X          |tags as descrived above             |
| freqBodyGyroMean.Y          |tags as descrived above             |
| freqBodyGyroMean.Z          |tags as descrived above             |
| freqBodyAccMagMean          |tags as descrived above             |
| freqBodyAccJerkMagMean.     |tags as descrived above             |
| freqBodyGyroMagMean         |tags as descrived above             |
| freqBodyGyroJerkMagMean     |tags as descrived above             |
| timeBodyAccStd.X            |same as above plus Std = standard deviation             |
| timeBodyAccStd.Y            |tags as descrived above             |
| timeBodyAccStd.Z            |tags as descrived above             |
| timeGravityAccStd.X         |tags as descrived above             |
| timeGravityAccStd.Y         |tags as descrived above             |
| timeGravityAccStd.Z         |tags as descrived above             |
| timeBodyAccJerkStd.X        |tags as descrived above             |
| timeBodyAccJerkStd.Y        |tags as descrived above             |
| timeBodyAccJerkStd.Z        |tags as descrived above             |
| timeBodyGyroStd.X           |tags as descrived above             |
| timeBodyGyroStd.Y           |tags as descrived above             |
| timeBodyGyroStd.Z           |tags as descrived above             |
| timeBodyGyroJerkStd.X       |tags as descrived above             |
| timeBodyGyroJerkStd.Y       |tags as descrived above             |
| timeBodyGyroJerkStd.Z       |tags as descrived above             |
| timeBodyAccMagStd           |tags as descrived above             |
| timeGravityAccMagStd        |tags as descrived above             |
| timeBodyAccJerkMagStd       |tags as descrived above             |
| timeBodyGyroMagStd          |tags as descrived above             |
| timeBodyGyroJerkMagStd      |tags as descrived above             |
| freqBodyAccStd.X            |tags as descrived above             |
| freqBodyAccStd.Y            |tags as descrived above             |
| freqBodyAccStd.Z            |tags as descrived above             |
| freqBodyAccJerkStd.X        |tags as descrived above             |
| freqBodyAccJerkStd.Y        |tags as descrived above             |
| freqBodyAccJerkStd.Z        |tags as descrived above             |
| freqBodyGyroStd.X           |tags as descrived above             |
| freqBodyGyroStd.Y           |tags as descrived above             |
| freqBodyGyroStd.Z           |tags as descrived above             |
| freqBodyAccMagStd           |tags as descrived above             |
| freqBodyAccJerkMagStd       |tags as descrived above             |
| freqBodyGyroMagStd          |tags as descrived above             |
| freqBodyGyroJerkMagStd      |tags as descrived above             |

------------------------------------------------------------------------



