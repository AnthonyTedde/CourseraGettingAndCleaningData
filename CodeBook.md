# Code book
## Summary (copyied from the study readMe file)

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

## Transformation
All variables have been transformed in that way:
`name_of_the_variable.operation_[axe]`
## Variables
| Variables | Details
|-----------|--------
| time_body_acceleration.mean_X | Mean time for body acceleration for X axe
| time_body_acceleration.mean_Y | Mean time for body acceleration for Y axe
| time_body_acceleration.mean_Z | Mean time for body acceleration for Z axe
| time_body_acceleration.std_X | Standard deviation of time for body acceleration for X axe 
| time_body_acceleration.std_Y | Standard deviation of time for body acceleration for Y axe
| time_body_acceleration.std_Z | Standard deviation of time for body acceleration for Z axe
| time_gravity_acceleration.mean_X | Mean time for the gravity acceleration for X axe
| time_gravity_acceleration.mean_Y | Mean time for the gravity acceleration for Y axe
| time_gravity_acceleration.mean_Z | Mean time for the gravity acceleration for Z axe
| time_gravity_acceleration.std_X |  Standard deviation of time for the gravity acceleration for X axe
| time_gravity_acceleration.std_Y |  Standard deviation of time for the gravity acceleration for Y axe     
| time_gravity_acceleration.std_Z |  Standard deviation of time for the gravity acceleration for Z axe       
| time_body_acceleration_jerk.mean_X | Mean time for the jerk body acceleration for X axe 
| time_body_acceleration_jerk.mean_Y | Mean time for the jerk body acceleration for Y axe            
| time_body_acceleration_jerk.mean_Z | Mean time for the jerk body acceleration for Z axe
| time_body_acceleration_jerk.std_X | Standard deviation of time for the jerk body acceleration for X axe 
| time_body_acceleration_jerk.std_Y | Standard deviation of time for the jerk body acceleration for Y axe             
| time_body_acceleration_jerk.std_Z | Standard deviation of time for the jerk body acceleration for Z axe              
| time_body_gyroscope.mean_X | Mean time for the body gyroscope for X axe  
| time_body_gyroscope.mean_Y | Mean time for the body gyroscope for Y axe                      
| time_body_gyroscope.mean_Z | Mean time for the body gyroscope for Z axe                      
| time_body_gyroscope.std_X | Standard deviation of time for the body gyroscope for X axe                       
| time_body_gyroscope.std_Y | Standard deviation of time for the body gyroscope for Y axe                       
| time_body_gyroscope.std_Z | Standard deviation of time for the body gyroscope for Z axe                       
| time_body_gyroscope_jerk.mean_X | Mean time for the body gyroscope jerk for X axe    
| time_body_gyroscope_jerk.mean_Y | Mean time for the body gyroscope jerk for Y axe                 
| time_body_gyroscope_jerk.mean_Z | Mean time for the body gyroscope jerk for Z axe                 
| time_body_gyroscope_jerk.std_X | Standard deviation of time for the body gyroscope jerk for X axe                  
| time_body_gyroscope_jerk.std_Y | Standard deviation of time for the body gyroscope jerk for Y axe                  
| time_body_gyroscope_jerk.std_Z | Standard deviation of time for the body gyroscope jerk for Z axe                  
| time_body_acceleration_magnitude.mean | Mean time for the body acceleration magnitude           
| time_body_acceleration_magnitude.std | Standard deviation of time for the body acceleration magnitude            
| time_gravity_acceleration_magnitude.mean | Mean time for the magnitude of the gravity acceleration
| time_gravity_acceleration_magnitude.std | Standard deviation of time for the gravity acceleration         
| time_body_acceleration_jerk_magnitude.mean | Mean time for the jerk body acceleration magnitude 
| time_body_acceleration_jerk_magnitude.std | Standard deviation of time for the jerk body acceleration magnitude 
| time_body_gyroscope_magnitude.mean | Mean time for the body gyroscope magnitude 
| time_body_gyroscope_magnitude.std | Standard deviation of time for the body gyroscope magnitude
| time_body_gyroscope_jerk_magnitude.mean | Mean time for the jerk body gyroscope magnitude 
| time_body_gyroscope_jerk_magnitude.std | Standard deviation of time for the jerk body gyroscope magnitude 
| frequency_body_acceleration.mean_X | Mean for the body acceleration frequency for X axe 
| frequency_body_acceleration.mean_Y | Mean for the body acceleration frequency for Y axe            
| frequency_body_acceleration.mean_Z | Mean for the body acceleration frequency for Z axe
| frequency_body_acceleration.std_X | Standard deviation of the body acceleration frequency for X axe
| frequency_body_acceleration.std_Y | Standard deviation of the body acceleration frequency for Y axe
| frequency_body_acceleration.std_Z | Standard deviation of the body acceleration frequency for Z axe
| frequency_body_acceleration_jerk.mean_X | Mean for the jerk body acceleration frequency for X axe
| frequency_body_acceleration_jerk.mean_Y | Mean for jerk body acceleration frequency for Y axe    
| frequency_body_acceleration_jerk.mean_Z | Mean for jerk body acceleration frequency for Z axe
| frequency_body_acceleration_jerk.std_X | Standard deviation of jerk body acceleration frequency for X axe
| frequency_body_acceleration_jerk.std_Y | Standard deviation of jerk body acceleration frequency for Y axe
| frequency_body_acceleration_jerk.std_Z | Standard deviation of jerk body acceleration frequency for Z axe
| frequency_body_gyroscope.mean_X | Mean for the body gyroscope frequency for X axe
| frequency_body_gyroscope.mean_Y | Mean for the body gyroscope frequency for Y axe        
| frequency_body_gyroscope.mean_Z | Mean for the body gyroscope frequency for Z axe
| frequency_body_gyroscope.std_X | Standard deviation of the body gyroscope frequency for X axe
| frequency_body_gyroscope.std_Y | Standard deviation of the body gyroscope frequency for Y axe
| frequency_body_gyroscope.std_Z | Standard deviation of the body gyroscope frequency for Z axe
| frequency_body_acceleration_magnitude.mean | Mean for the body acceleration magnitude frequency
| frequency_body_acceleration_magnitude.std | Standard of deviation of the body acceleration magnitude frequency
| frequency_2body_acceleration_jerk_magnitude.mean | Mean for the jerk body acceleration magnitude
| frequency_2body_acceleration_jerk_magnitude.std | Standard deviation of the jerk body acceleration magnitude
| frequency_2body_gyroscope_magnitude.mean | Mean for the body gyroscope magnitude
| frequency_2body_gyroscope_magnitude.std | Standard deviation of the body gyroscope magnitude
| frequency_2body_gyroscope_jerk_magnitude.mean | Mean for the jerk body gyroscope magnitude
| frequency_2body_gyroscope_jerk_magnitude.std | Standard deviation of the jerk body gyroscope magnitude
| activity | Activity levels of the measurement
| subject | Identifier of the subject
