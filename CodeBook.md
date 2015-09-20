---
title: "Projcet Codebook"
author: "Danti Chen"
date: "Sept 2015"
output:
  html_document:
    keep_md: yes
---

## Project Description
This project focuses on cleaning data for wearable computing. The data is collected from the accelerometers from the Samsung Galaxy S smartphone. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

##Study design and data processing

###Collection of the raw data
The data for the project can be downloaded at: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Notes on the original (raw) data 
A full description of the original data is available at: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The dataset was downloaded to the local directory "~/R/Getting&Cleaning_Data/Project/UCI HAR Dataset/" from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The raw sampled data (../Inertial Signals) was not used for the project, only the features (based on the raw data)  are used. The data was also split into training and testing sets. Each set contains 
X -- feature measurements
y -- integers indicating the activity labels for each row of X
subject -- integers indicating the subjects (users) for each measurement in X


features.txt contains description of the list of features


activity_labels.txt is used to correlate integer labels for acitivity and the respective descriptive names.

The data being processed are mean and standard deviation of each feature that's measured decided based on features.txt


##Creating the tidy datafile

###Guide to create the tidy data file
The training and test sets were combined for each data frame, followed by subsetting, merging, and aggregation for the tidy data file. Detailed steps can be found at https://github.com/danielle128/R-cleaningData/blob/master/ReadMe.md

###Cleaning of the data
The subject's name was transformed into an Subject (unique integers) (1-30), the type of activity was transformed into a factor Activity (6 levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING), all measurement data was transformed into numerical vectors after taking the average for each subject doing each activity.

##Description of the variables in the file
General description of the file including:
 - Dimensions of the dataset: 35 rows x 68 columns
 

###Summary of the variables in the file

```
## 'data.frame':	35 obs. of  68 variables:
##  $ Activity                                                                           : Factor w/ 6 levels "LAYING","SITTING",..: 1 1 1 1 1 1 2 2 2 2 ...
##  $ Subject                                                                            : int  10 12 13 18 20 24 22 23 25 26 ...
##  $ Averaged.Time.Domain..Accelerator.Data..Mean.Value...X                             : num  0.277 0.274 0.276 0.276 0.268 ...
##  $ Averaged.Time.Domain..Accelerator.Data..Mean.Value...Y                             : num  -0.017 -0.0183 -0.0177 -0.0173 -0.0176 ...
##  $ Averaged.Time.Domain..Accelerator.Data..Mean.Value...Z                             : num  -0.111 -0.107 -0.109 -0.108 -0.108 ...
##  $ Averaged.Time.Domain..Accelerator.Data..Standard.Deviation...X                     : num  -0.392 -0.584 -0.625 -0.695 -0.605 ...
##  $ Averaged.Time.Domain..Accelerator.Data..Standard.Deviation...Y                     : num  -0.386 -0.522 -0.449 -0.627 -0.369 ...
##  $ Averaged.Time.Domain..Accelerator.Data..Standard.Deviation...Z                     : num  -0.499 -0.699 -0.587 -0.702 -0.635 ...
##  $ Averaged.Time.Domain.Gravity.Accelerator.Data..Mean.Value...X                      : num  0.741 0.699 0.71 0.717 0.628 ...
##  $ Averaged.Time.Domain.Gravity.Accelerator.Data..Mean.Value...Y                      : num  -0.2072 0.03 -0.0421 -0.0158 -0.0373 ...
##  $ Averaged.Time.Domain.Gravity.Accelerator.Data..Mean.Value...Z                      : num  0.1084 0.033 0.0443 0.09 0.1072 ...
##  $ Averaged.Time.Domain.Gravity.Accelerator.Data..Standard.Deviation...X              : num  -0.965 -0.967 -0.967 -0.98 -0.958 ...
##  $ Averaged.Time.Domain.Gravity.Accelerator.Data..Standard.Deviation...Y              : num  -0.955 -0.961 -0.954 -0.97 -0.953 ...
##  $ Averaged.Time.Domain.Gravity.Accelerator.Data..Standard.Deviation...Z              : num  -0.928 -0.947 -0.939 -0.959 -0.941 ...
##  $ Averaged.Time.Domain..Accelerator.Data.Jerk.Mean.Value...X                         : num  0.0795 0.0704 0.0794 0.0775 0.0798 ...
##  $ Averaged.Time.Domain..Accelerator.Data.Jerk.Mean.Value...Y                         : num  0.01694 0.00531 0.00388 0.01289 0.00221 ...
##  $ Averaged.Time.Domain..Accelerator.Data.Jerk.Mean.Value...Z                         : num  -0.016237 0.000308 -0.012349 0.000849 -0.004506 ...
##  $ Averaged.Time.Domain..Accelerator.Data.Jerk.Standard.Deviation...X                 : num  -0.388 -0.582 -0.639 -0.735 -0.627 ...
##  $ Averaged.Time.Domain..Accelerator.Data.Jerk.Standard.Deviation...Y                 : num  -0.446 -0.571 -0.57 -0.733 -0.527 ...
##  $ Averaged.Time.Domain..Accelerator.Data.Jerk.Standard.Deviation...Z                 : num  -0.683 -0.793 -0.728 -0.847 -0.747 ...
##  $ Averaged.Time.Domain..Gyroscope.Data..Mean.Value...X                               : num  -0.0151 -0.0629 -0.0562 -0.0374 -0.0242 ...
##  $ Averaged.Time.Domain..Gyroscope.Data..Mean.Value...Y                               : num  -0.0917 -0.0592 -0.0617 -0.0678 -0.0789 ...
##  $ Averaged.Time.Domain..Gyroscope.Data..Mean.Value...Z                               : num  0.0852 0.0961 0.0989 0.0908 0.0856 ...
##  $ Averaged.Time.Domain..Gyroscope.Data..Standard.Deviation...X                       : num  -0.589 -0.728 -0.715 -0.805 -0.685 ...
##  $ Averaged.Time.Domain..Gyroscope.Data..Standard.Deviation...Y                       : num  -0.465 -0.735 -0.646 -0.777 -0.574 ...
##  $ Averaged.Time.Domain..Gyroscope.Data..Standard.Deviation...Z                       : num  -0.497 -0.671 -0.643 -0.746 -0.527 ...
##  $ Averaged.Time.Domain..Gyroscope.Data.Jerk.Mean.Value...X                           : num  -0.112 -0.0731 -0.0881 -0.0944 -0.095 ...
##  $ Averaged.Time.Domain..Gyroscope.Data.Jerk.Mean.Value...Y                           : num  -0.0398 -0.0437 -0.0441 -0.0442 -0.0414 ...
##  $ Averaged.Time.Domain..Gyroscope.Data.Jerk.Mean.Value...Z                           : num  -0.0573 -0.0575 -0.0583 -0.0568 -0.0543 ...
##  $ Averaged.Time.Domain..Gyroscope.Data.Jerk.Standard.Deviation...X                   : num  -0.633 -0.71 -0.716 -0.843 -0.698 ...
##  $ Averaged.Time.Domain..Gyroscope.Data.Jerk.Standard.Deviation...Y                   : num  -0.708 -0.811 -0.719 -0.884 -0.684 ...
##  $ Averaged.Time.Domain..Gyroscope.Data.Jerk.Standard.Deviation...Z                   : num  -0.607 -0.749 -0.713 -0.839 -0.637 ...
##  $ Averaged.Time.Domain..Accelerator.Data..Magnitude.Mean.Value..                     : num  -0.357 -0.56 -0.54 -0.658 -0.517 ...
##  $ Averaged.Time.Domain..Accelerator.Data..Magnitude.Standard.Deviation..             : num  -0.424 -0.574 -0.597 -0.69 -0.572 ...
##  $ Averaged.Time.Domain.Gravity.Accelerator.Data..Magnitude.Mean.Value..              : num  -0.357 -0.56 -0.54 -0.658 -0.517 ...
##  $ Averaged.Time.Domain.Gravity.Accelerator.Data..Magnitude.Standard.Deviation..      : num  -0.424 -0.574 -0.597 -0.69 -0.572 ...
##  $ Averaged.Time.Domain..Accelerator.Data.Jerk.Magnitude.Mean.Value..                 : num  -0.462 -0.63 -0.625 -0.754 -0.62 ...
##  $ Averaged.Time.Domain..Accelerator.Data.Jerk.Magnitude.Standard.Deviation..         : num  -0.409 -0.566 -0.61 -0.745 -0.589 ...
##  $ Averaged.Time.Domain..Gyroscope.Data..Magnitude.Mean.Value..                       : num  -0.388 -0.632 -0.581 -0.715 -0.517 ...
##  $ Averaged.Time.Domain..Gyroscope.Data..Magnitude.Standard.Deviation..               : num  -0.523 -0.685 -0.636 -0.776 -0.58 ...
##  $ Averaged.Time.Domain..Gyroscope.Data.Jerk.Magnitude.Mean.Value..                   : num  -0.666 -0.777 -0.713 -0.86 -0.684 ...
##  $ Averaged.Time.Domain..Gyroscope.Data.Jerk.Magnitude.Standard.Deviation..           : num  -0.715 -0.786 -0.712 -0.889 -0.684 ...
##  $ Averaged.Frequency.Domain..Accelerator.Data..Mean.Value...X                        : num  -0.392 -0.579 -0.639 -0.714 -0.613 ...
##  $ Averaged.Frequency.Domain..Accelerator.Data..Mean.Value...Y                        : num  -0.385 -0.523 -0.493 -0.664 -0.426 ...
##  $ Averaged.Frequency.Domain..Accelerator.Data..Mean.Value...Z                        : num  -0.555 -0.727 -0.63 -0.761 -0.665 ...
##  $ Averaged.Frequency.Domain..Accelerator.Data..Standard.Deviation...X                : num  -0.393 -0.587 -0.621 -0.688 -0.603 ...
##  $ Averaged.Frequency.Domain..Accelerator.Data..Standard.Deviation...Y                : num  -0.426 -0.553 -0.463 -0.633 -0.382 ...
##  $ Averaged.Frequency.Domain..Accelerator.Data..Standard.Deviation...Z                : num  -0.512 -0.71 -0.599 -0.695 -0.648 ...
##  $ Averaged.Frequency.Domain..Accelerator.Data.Jerk.Mean.Value...X                    : num  -0.412 -0.599 -0.66 -0.75 -0.652 ...
##  $ Averaged.Frequency.Domain..Accelerator.Data.Jerk.Mean.Value...Y                    : num  -0.463 -0.591 -0.603 -0.744 -0.558 ...
##  $ Averaged.Frequency.Domain..Accelerator.Data.Jerk.Mean.Value...Z                    : num  -0.646 -0.775 -0.711 -0.833 -0.733 ...
##  $ Averaged.Frequency.Domain..Accelerator.Data.Jerk.Standard.Deviation...X            : num  -0.419 -0.603 -0.65 -0.743 -0.635 ...
##  $ Averaged.Frequency.Domain..Accelerator.Data.Jerk.Standard.Deviation...Y            : num  -0.467 -0.579 -0.562 -0.739 -0.526 ...
##  $ Averaged.Frequency.Domain..Accelerator.Data.Jerk.Standard.Deviation...Z            : num  -0.721 -0.809 -0.745 -0.86 -0.761 ...
##  $ Averaged.Frequency.Domain..Gyroscope.Data..Mean.Value...X                          : num  -0.524 -0.661 -0.659 -0.788 -0.626 ...
##  $ Averaged.Frequency.Domain..Gyroscope.Data..Mean.Value...Y                          : num  -0.545 -0.745 -0.647 -0.816 -0.591 ...
##  $ Averaged.Frequency.Domain..Gyroscope.Data..Mean.Value...Z                          : num  -0.458 -0.657 -0.62 -0.756 -0.518 ...
##  $ Averaged.Frequency.Domain..Gyroscope.Data..Standard.Deviation...X                  : num  -0.612 -0.75 -0.735 -0.812 -0.704 ...
##  $ Averaged.Frequency.Domain..Gyroscope.Data..Standard.Deviation...Y                  : num  -0.43 -0.733 -0.651 -0.76 -0.568 ...
##  $ Averaged.Frequency.Domain..Gyroscope.Data..Standard.Deviation...Z                  : num  -0.557 -0.708 -0.686 -0.766 -0.575 ...
##  $ Averaged.Frequency.Domain..Accelerator.Data..Magnitude.Mean.Value..                : num  -0.389 -0.559 -0.59 -0.698 -0.56 ...
##  $ Averaged.Frequency.Domain..Accelerator.Data..Magnitude.Standard.Deviation..        : num  -0.536 -0.651 -0.665 -0.734 -0.648 ...
##  $ Averaged.Frequency.Domain.Body.Accelerator.Data.Jerk.Magnitude.Mean.Value..        : num  -0.385 -0.564 -0.607 -0.742 -0.585 ...
##  $ Averaged.Frequency.Domain.Body.Accelerator.Data.Jerk.Magnitude.Standard.Deviation..: num  -0.447 -0.572 -0.617 -0.75 -0.597 ...
##  $ Averaged.Frequency.Domain.Body.Gyroscope.Data..Magnitude.Mean.Value..              : num  -0.573 -0.717 -0.652 -0.816 -0.607 ...
##  $ Averaged.Frequency.Domain.Body.Gyroscope.Data..Magnitude.Standard.Deviation..      : num  -0.574 -0.719 -0.692 -0.79 -0.636 ...
##  $ Averaged.Frequency.Domain.Body.Gyroscope.Data.Jerk.Magnitude.Mean.Value..          : num  -0.711 -0.79 -0.712 -0.885 -0.693 ...
##  $ Averaged.Frequency.Domain.Body.Gyroscope.Data.Jerk.Magnitude.Standard.Deviation..  : num  -0.741 -0.797 -0.733 -0.902 -0.695 ...
```

```
##                Activity    Subject     
##  LAYING            :6   Min.   : 1.00  
##  SITTING           :6   1st Qu.: 8.50  
##  STANDING          :7   Median :16.00  
##  WALKING           :6   Mean   :15.71  
##  WALKING_DOWNSTAIRS:4   3rd Qu.:22.50  
##  WALKING_UPSTAIRS  :6   Max.   :30.00  
##  Averaged.Time.Domain..Accelerator.Data..Mean.Value...X
##  Min.   :0.2423                                        
##  1st Qu.:0.2727                                        
##  Median :0.2759                                        
##  Mean   :0.2736                                        
##  3rd Qu.:0.2771                                        
##  Max.   :0.2792                                        
##  Averaged.Time.Domain..Accelerator.Data..Mean.Value...Y
##  Min.   :-0.03166                                      
##  1st Qu.:-0.01896                                      
##  Median :-0.01768                                      
##  Mean   :-0.01815                                      
##  3rd Qu.:-0.01692                                      
##  Max.   :-0.01445                                      
##  Averaged.Time.Domain..Accelerator.Data..Mean.Value...Z
##  Min.   :-0.1183                                       
##  1st Qu.:-0.1109                                       
##  Median :-0.1088                                       
##  Mean   :-0.1090                                       
##  3rd Qu.:-0.1074                                       
##  Max.   :-0.1010                                       
##  Averaged.Time.Domain..Accelerator.Data..Standard.Deviation...X
##  Min.   :-0.99504                                              
##  1st Qu.:-0.66457                                              
##  Median :-0.60559                                              
##  Mean   :-0.60130                                              
##  3rd Qu.:-0.57448                                              
##  Max.   : 0.07648                                              
##  Averaged.Time.Domain..Accelerator.Data..Standard.Deviation...Y
##  Min.   :-0.9794                                               
##  1st Qu.:-0.5792                                               
##  Median :-0.5314                                               
##  Mean   :-0.5024                                               
##  3rd Qu.:-0.4389                                               
##  Max.   : 0.2200                                               
##  Averaged.Time.Domain..Accelerator.Data..Standard.Deviation...Z
##  Min.   :-0.98098                                              
##  1st Qu.:-0.69785                                              
##  Median :-0.64710                                              
##  Mean   :-0.61266                                              
##  3rd Qu.:-0.55494                                              
##  Max.   :-0.09352                                              
##  Averaged.Time.Domain.Gravity.Accelerator.Data..Mean.Value...X
##  Min.   :0.4412                                               
##  1st Qu.:0.6464                                               
##  Median :0.6813                                               
##  Mean   :0.6751                                               
##  3rd Qu.:0.7037                                               
##  Max.   :0.9084                                               
##  Averaged.Time.Domain.Gravity.Accelerator.Data..Mean.Value...Y
##  Min.   :-0.350769                                            
##  1st Qu.:-0.067810                                            
##  Median : 0.002085                                            
##  Mean   :-0.010878                                            
##  3rd Qu.: 0.066294                                            
##  Max.   : 0.200569                                            
##  Averaged.Time.Domain.Gravity.Accelerator.Data..Mean.Value...Z
##  Min.   :-0.27820                                             
##  1st Qu.: 0.03295                                             
##  Median : 0.06232                                             
##  Mean   : 0.06841                                             
##  3rd Qu.: 0.14069                                             
##  Max.   : 0.26623                                             
##  Averaged.Time.Domain.Gravity.Accelerator.Data..Standard.Deviation...X
##  Min.   :-0.9933                                                      
##  1st Qu.:-0.9732                                                      
##  Median :-0.9665                                                      
##  Mean   :-0.9653                                                      
##  3rd Qu.:-0.9594                                                      
##  Max.   :-0.9397                                                      
##  Averaged.Time.Domain.Gravity.Accelerator.Data..Standard.Deviation...Y
##  Min.   :-0.9848                                                      
##  1st Qu.:-0.9604                                                      
##  Median :-0.9564                                                      
##  Mean   :-0.9550                                                      
##  3rd Qu.:-0.9510                                                      
##  Max.   :-0.9011                                                      
##  Averaged.Time.Domain.Gravity.Accelerator.Data..Standard.Deviation...Z
##  Min.   :-0.9813                                                      
##  1st Qu.:-0.9502                                                      
##  Median :-0.9418                                                      
##  Mean   :-0.9401                                                      
##  3rd Qu.:-0.9286                                                      
##  Max.   :-0.8807                                                      
##  Averaged.Time.Domain..Accelerator.Data.Jerk.Mean.Value...X
##  Min.   :0.06861                                           
##  1st Qu.:0.07727                                           
##  Median :0.07886                                           
##  Mean   :0.07967                                           
##  3rd Qu.:0.08182                                           
##  Max.   :0.10590                                           
##  Averaged.Time.Domain..Accelerator.Data.Jerk.Mean.Value...Y
##  Min.   :-0.001372                                         
##  1st Qu.: 0.004524                                         
##  Median : 0.007304                                         
##  Mean   : 0.008614                                         
##  3rd Qu.: 0.012233                                         
##  Max.   : 0.032078                                         
##  Averaged.Time.Domain..Accelerator.Data.Jerk.Mean.Value...Z
##  Min.   :-0.032698                                         
##  1st Qu.:-0.007646                                         
##  Median :-0.003553                                         
##  Mean   :-0.005631                                         
##  3rd Qu.:-0.001159                                         
##  Max.   : 0.003645                                         
##  Averaged.Time.Domain..Accelerator.Data.Jerk.Standard.Deviation...X
##  Min.   :-0.9940                                                   
##  1st Qu.:-0.7002                                                   
##  Median :-0.6355                                                   
##  Mean   :-0.6297                                                   
##  3rd Qu.:-0.5804                                                   
##  Max.   : 0.0296                                                   
##  Averaged.Time.Domain..Accelerator.Data.Jerk.Standard.Deviation...Y
##  Min.   :-0.9892                                                   
##  1st Qu.:-0.6766                                                   
##  Median :-0.6100                                                   
##  Mean   :-0.5981                                                   
##  3rd Qu.:-0.5635                                                   
##  Max.   :-0.0271                                                   
##  Averaged.Time.Domain..Accelerator.Data.Jerk.Standard.Deviation...Z
##  Min.   :-0.9920                                                   
##  1st Qu.:-0.8111                                                   
##  Median :-0.7816                                                   
##  Mean   :-0.7613                                                   
##  3rd Qu.:-0.7250                                                   
##  Max.   :-0.4446                                                   
##  Averaged.Time.Domain..Gyroscope.Data..Mean.Value...X
##  Min.   :-0.07353                                    
##  1st Qu.:-0.04753                                    
##  Median :-0.02576                                    
##  Mean   :-0.02715                                    
##  3rd Qu.:-0.01903                                    
##  Max.   : 0.11961                                    
##  Averaged.Time.Domain..Gyroscope.Data..Mean.Value...Y
##  Min.   :-0.17216                                    
##  1st Qu.:-0.08332                                    
##  Median :-0.07444                                    
##  Mean   :-0.07671                                    
##  3rd Qu.:-0.06699                                    
##  Max.   :-0.04514                                    
##  Averaged.Time.Domain..Gyroscope.Data..Mean.Value...Z
##  Min.   :-0.004648                                   
##  1st Qu.: 0.084701                                   
##  Median : 0.087284                                   
##  Mean   : 0.085932                                   
##  3rd Qu.: 0.096384                                   
##  Max.   : 0.109093                                   
##  Averaged.Time.Domain..Gyroscope.Data..Standard.Deviation...X
##  Min.   :-0.9870                                             
##  1st Qu.:-0.7603                                             
##  Median :-0.7151                                             
##  Mean   :-0.7177                                             
##  3rd Qu.:-0.6856                                             
##  Max.   :-0.3776                                             
##  Averaged.Time.Domain..Gyroscope.Data..Standard.Deviation...Y
##  Min.   :-0.9851                                             
##  1st Qu.:-0.7651                                             
##  Median :-0.7134                                             
##  Mean   :-0.6842                                             
##  3rd Qu.:-0.6304                                             
##  Max.   :-0.3990                                             
##  Averaged.Time.Domain..Gyroscope.Data..Standard.Deviation...Z
##  Min.   :-0.9879                                             
##  1st Qu.:-0.7178                                             
##  Median :-0.6741                                             
##  Mean   :-0.6468                                             
##  3rd Qu.:-0.6032                                             
##  Max.   :-0.1331                                             
##  Averaged.Time.Domain..Gyroscope.Data.Jerk.Mean.Value...X
##  Min.   :-0.11905                                        
##  1st Qu.:-0.10546                                        
##  Median :-0.09881                                        
##  Mean   :-0.09759                                        
##  3rd Qu.:-0.08973                                        
##  Max.   :-0.07311                                        
##  Averaged.Time.Domain..Gyroscope.Data.Jerk.Mean.Value...Y
##  Min.   :-0.05938                                        
##  1st Qu.:-0.04415                                        
##  Median :-0.04176                                        
##  Mean   :-0.04284                                        
##  3rd Qu.:-0.04012                                        
##  Max.   :-0.03688                                        
##  Averaged.Time.Domain..Gyroscope.Data.Jerk.Mean.Value...Z
##  Min.   :-0.07434                                        
##  1st Qu.:-0.05763                                        
##  Median :-0.05558                                        
##  Mean   :-0.05560                                        
##  3rd Qu.:-0.05307                                        
##  Max.   :-0.04507                                        
##  Averaged.Time.Domain..Gyroscope.Data.Jerk.Standard.Deviation...X
##  Min.   :-0.9919                                                 
##  1st Qu.:-0.7758                                                 
##  Median :-0.7323                                                 
##  Mean   :-0.7269                                                 
##  3rd Qu.:-0.6896                                                 
##  Max.   :-0.3890                                                 
##  Averaged.Time.Domain..Gyroscope.Data.Jerk.Standard.Deviation...Y
##  Min.   :-0.9933                                                 
##  1st Qu.:-0.8538                                                 
##  Median :-0.8112                                                 
##  Mean   :-0.7880                                                 
##  3rd Qu.:-0.7137                                                 
##  Max.   :-0.5460                                                 
##  Averaged.Time.Domain..Gyroscope.Data.Jerk.Standard.Deviation...Z
##  Min.   :-0.9934                                                 
##  1st Qu.:-0.7956                                                 
##  Median :-0.7508                                                 
##  Mean   :-0.7386                                                 
##  3rd Qu.:-0.6806                                                 
##  Max.   :-0.4822                                                 
##  Averaged.Time.Domain..Accelerator.Data..Magnitude.Mean.Value..
##  Min.   :-0.9854                                               
##  1st Qu.:-0.6085                                               
##  Median :-0.5428                                               
##  Mean   :-0.5419                                               
##  3rd Qu.:-0.5143                                               
##  Max.   : 0.1946                                               
##  Averaged.Time.Domain..Accelerator.Data..Magnitude.Standard.Deviation..
##  Min.   :-0.9868                                                       
##  1st Qu.:-0.6549                                                       
##  Median :-0.5972                                                       
##  Mean   :-0.5907                                                       
##  3rd Qu.:-0.5529                                                       
##  Max.   :-0.1269                                                       
##  Averaged.Time.Domain.Gravity.Accelerator.Data..Magnitude.Mean.Value..
##  Min.   :-0.9854                                                      
##  1st Qu.:-0.6085                                                      
##  Median :-0.5428                                                      
##  Mean   :-0.5419                                                      
##  3rd Qu.:-0.5143                                                      
##  Max.   : 0.1946                                                      
##  Averaged.Time.Domain.Gravity.Accelerator.Data..Magnitude.Standard.Deviation..
##  Min.   :-0.9868                                                              
##  1st Qu.:-0.6549                                                              
##  Median :-0.5972                                                              
##  Mean   :-0.5907                                                              
##  3rd Qu.:-0.5529                                                              
##  Max.   :-0.1269                                                              
##  Averaged.Time.Domain..Accelerator.Data.Jerk.Magnitude.Mean.Value..
##  Min.   :-0.99325                                                  
##  1st Qu.:-0.70263                                                  
##  Median :-0.65018                                                  
##  Mean   :-0.64090                                                  
##  3rd Qu.:-0.59914                                                  
##  Max.   :-0.06621                                                  
##  Averaged.Time.Domain..Accelerator.Data.Jerk.Magnitude.Standard.Deviation..
##  Min.   :-0.99338                                                          
##  1st Qu.:-0.68473                                                          
##  Median :-0.62566                                                          
##  Mean   :-0.62037                                                          
##  3rd Qu.:-0.57751                                                          
##  Max.   :-0.03635                                                          
##  Averaged.Time.Domain..Gyroscope.Data..Magnitude.Mean.Value..
##  Min.   :-0.9833                                             
##  1st Qu.:-0.6785                                             
##  Median :-0.6177                                             
##  Mean   :-0.6016                                             
##  3rd Qu.:-0.5492                                             
##  Max.   :-0.1373                                             
##  Averaged.Time.Domain..Gyroscope.Data..Magnitude.Standard.Deviation..
##  Min.   :-0.9817                                                     
##  1st Qu.:-0.7340                                                     
##  Median :-0.6797                                                     
##  Mean   :-0.6598                                                     
##  3rd Qu.:-0.5893                                                     
##  Max.   :-0.2238                                                     
##  Averaged.Time.Domain..Gyroscope.Data.Jerk.Magnitude.Mean.Value..
##  Min.   :-0.9943                                                 
##  1st Qu.:-0.8134                                                 
##  Median :-0.7859                                                 
##  Mean   :-0.7614                                                 
##  3rd Qu.:-0.7040                                                 
##  Max.   :-0.5439                                                 
##  Averaged.Time.Domain..Gyroscope.Data.Jerk.Magnitude.Standard.Deviation..
##  Min.   :-0.9933                                                         
##  1st Qu.:-0.8386                                                         
##  Median :-0.8037                                                         
##  Mean   :-0.7801                                                         
##  3rd Qu.:-0.7203                                                         
##  Max.   :-0.5739                                                         
##  Averaged.Frequency.Domain..Accelerator.Data..Mean.Value...X
##  Min.   :-0.99450                                           
##  1st Qu.:-0.68461                                           
##  Median :-0.61952                                           
##  Mean   :-0.61688                                           
##  3rd Qu.:-0.57958                                           
##  Max.   :-0.04146                                           
##  Averaged.Frequency.Domain..Accelerator.Data..Mean.Value...Y
##  Min.   :-0.9824                                            
##  1st Qu.:-0.6051                                            
##  Median :-0.5485                                            
##  Mean   :-0.5290                                            
##  3rd Qu.:-0.4744                                            
##  Max.   : 0.1231                                            
##  Averaged.Frequency.Domain..Accelerator.Data..Mean.Value...Z
##  Min.   :-0.9865                                            
##  1st Qu.:-0.7326                                            
##  Median :-0.6843                                            
##  Mean   :-0.6631                                            
##  3rd Qu.:-0.6299                                            
##  Max.   :-0.1986                                            
##  Averaged.Frequency.Domain..Accelerator.Data..Standard.Deviation...X
##  Min.   :-0.9953                                                    
##  1st Qu.:-0.6558                                                    
##  Median :-0.6064                                                    
##  Mean   :-0.5967                                                    
##  3rd Qu.:-0.5650                                                    
##  Max.   : 0.1183                                                    
##  Averaged.Frequency.Domain..Accelerator.Data..Standard.Deviation...Y
##  Min.   :-0.9784                                                    
##  1st Qu.:-0.5907                                                    
##  Median :-0.5426                                                    
##  Mean   :-0.5214                                                    
##  3rd Qu.:-0.4637                                                    
##  Max.   : 0.1907                                                    
##  Averaged.Frequency.Domain..Accelerator.Data..Standard.Deviation...Z
##  Min.   :-0.9788                                                    
##  1st Qu.:-0.7007                                                    
##  Median :-0.6521                                                    
##  Mean   :-0.6181                                                    
##  3rd Qu.:-0.5554                                                    
##  Max.   :-0.1093                                                    
##  Averaged.Frequency.Domain..Accelerator.Data.Jerk.Mean.Value...X
##  Min.   :-0.994117                                              
##  1st Qu.:-0.715484                                              
##  Median :-0.652023                                              
##  Mean   :-0.646034                                              
##  3rd Qu.:-0.611146                                              
##  Max.   : 0.007745                                              
##  Averaged.Frequency.Domain..Accelerator.Data.Jerk.Mean.Value...Y
##  Min.   :-0.9888                                                
##  1st Qu.:-0.6956                                                
##  Median :-0.6294                                                
##  Mean   :-0.6189                                                
##  3rd Qu.:-0.5871                                                
##  Max.   :-0.0429                                                
##  Averaged.Frequency.Domain..Accelerator.Data.Jerk.Mean.Value...Z
##  Min.   :-0.9906                                                
##  1st Qu.:-0.7955                                                
##  Median :-0.7656                                                
##  Mean   :-0.7413                                                
##  3rd Qu.:-0.7069                                                
##  Max.   :-0.3882                                                
##  Averaged.Frequency.Domain..Accelerator.Data.Jerk.Standard.Deviation...X
##  Min.   :-0.99446                                                       
##  1st Qu.:-0.71133                                                       
##  Median :-0.64961                                                       
##  Mean   :-0.64648                                                       
##  3rd Qu.:-0.59903                                                       
##  Max.   :-0.04166                                                       
##  Averaged.Frequency.Domain..Accelerator.Data.Jerk.Standard.Deviation...Y
##  Min.   :-0.99041                                                       
##  1st Qu.:-0.67741                                                       
##  Median :-0.61291                                                       
##  Mean   :-0.60335                                                       
##  3rd Qu.:-0.56099                                                       
##  Max.   :-0.08012                                                       
##  Averaged.Frequency.Domain..Accelerator.Data.Jerk.Standard.Deviation...Z
##  Min.   :-0.9919                                                        
##  1st Qu.:-0.8306                                                        
##  Median :-0.7968                                                        
##  Mean   :-0.7802                                                        
##  3rd Qu.:-0.7420                                                        
##  Max.   :-0.5005                                                        
##  Averaged.Frequency.Domain..Gyroscope.Data..Mean.Value...X
##  Min.   :-0.9860                                          
##  1st Qu.:-0.7058                                          
##  Median :-0.6674                                          
##  Mean   :-0.6666                                          
##  3rd Qu.:-0.6387                                          
##  Max.   :-0.2371                                          
##  Averaged.Frequency.Domain..Gyroscope.Data..Mean.Value...Y
##  Min.   :-0.9874                                          
##  1st Qu.:-0.7861                                          
##  Median :-0.7448                                          
##  Mean   :-0.7069                                          
##  3rd Qu.:-0.6302                                          
##  Max.   :-0.4771                                          
##  Averaged.Frequency.Domain..Gyroscope.Data..Mean.Value...Z
##  Min.   :-0.9887                                          
##  1st Qu.:-0.7095                                          
##  Median :-0.6707                                          
##  Mean   :-0.6384                                          
##  3rd Qu.:-0.6021                                          
##  Max.   :-0.1585                                          
##  Averaged.Frequency.Domain..Gyroscope.Data..Standard.Deviation...X
##  Min.   :-0.9874                                                  
##  1st Qu.:-0.7818                                                  
##  Median :-0.7358                                                  
##  Mean   :-0.7356                                                  
##  3rd Qu.:-0.7042                                                  
##  Max.   :-0.4232                                                  
##  Averaged.Frequency.Domain..Gyroscope.Data..Standard.Deviation...Y
##  Min.   :-0.9838                                                  
##  1st Qu.:-0.7671                                                  
##  Median :-0.7152                                                  
##  Mean   :-0.6761                                                  
##  3rd Qu.:-0.6110                                                  
##  Max.   :-0.3489                                                  
##  Averaged.Frequency.Domain..Gyroscope.Data..Standard.Deviation...Z
##  Min.   :-0.9887                                                  
##  1st Qu.:-0.7514                                                  
##  Median :-0.7082                                                  
##  Mean   :-0.6838                                                  
##  3rd Qu.:-0.6529                                                  
##  Max.   :-0.2055                                                  
##  Averaged.Frequency.Domain..Accelerator.Data..Magnitude.Mean.Value..
##  Min.   :-0.99001                                                   
##  1st Qu.:-0.65311                                                   
##  Median :-0.58993                                                   
##  Mean   :-0.58148                                                   
##  3rd Qu.:-0.52877                                                   
##  Max.   :-0.02958                                                   
##  Averaged.Frequency.Domain..Accelerator.Data..Magnitude.Standard.Deviation..
##  Min.   :-0.9863                                                            
##  1st Qu.:-0.7028                                                            
##  Median :-0.6631                                                            
##  Mean   :-0.6614                                                            
##  3rd Qu.:-0.6241                                                            
##  Max.   :-0.3235                                                            
##  Averaged.Frequency.Domain.Body.Accelerator.Data.Jerk.Magnitude.Mean.Value..
##  Min.   :-0.993006                                                          
##  1st Qu.:-0.684158                                                          
##  Median :-0.614818                                                          
##  Mean   :-0.611856                                                          
##  3rd Qu.:-0.568708                                                          
##  Max.   : 0.003827                                                          
##  Averaged.Frequency.Domain.Body.Accelerator.Data.Jerk.Magnitude.Standard.Deviation..
##  Min.   :-0.99263                                                                   
##  1st Qu.:-0.68354                                                                   
##  Median :-0.64109                                                                   
##  Mean   :-0.63483                                                                   
##  3rd Qu.:-0.59059                                                                   
##  Max.   :-0.09778                                                                   
##  Averaged.Frequency.Domain.Body.Gyroscope.Data..Magnitude.Mean.Value..
##  Min.   :-0.9866                                                      
##  1st Qu.:-0.7566                                                      
##  Median :-0.7173                                                      
##  Mean   :-0.6956                                                      
##  3rd Qu.:-0.6326                                                      
##  Max.   :-0.3544                                                      
##  Averaged.Frequency.Domain.Body.Gyroscope.Data..Magnitude.Standard.Deviation..
##  Min.   :-0.9814                                                              
##  1st Qu.:-0.7661                                                              
##  Median :-0.7113                                                              
##  Mean   :-0.6969                                                              
##  3rd Qu.:-0.6541                                                              
##  Max.   :-0.2724                                                              
##  Averaged.Frequency.Domain.Body.Gyroscope.Data.Jerk.Magnitude.Mean.Value..
##  Min.   :-0.9933                                                          
##  1st Qu.:-0.8382                                                          
##  Median :-0.8101                                                          
##  Mean   :-0.7813                                                          
##  3rd Qu.:-0.7148                                                          
##  Max.   :-0.5841                                                          
##  Averaged.Frequency.Domain.Body.Gyroscope.Data.Jerk.Magnitude.Standard.Deviation..
##  Min.   :-0.9935                                                                  
##  1st Qu.:-0.8499                                                                  
##  Median :-0.8100                                                                  
##  Mean   :-0.7949                                                                  
##  3rd Qu.:-0.7385                                                                  
##  Max.   :-0.5937
```

###



