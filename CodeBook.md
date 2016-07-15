#Code book

##Identifiers

 * subject - The id of the test subject
 * activity - The type of activity at measurement

### Activities

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

##Measurements

### Description

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals t_acc_xyz and t_gyro_xyz. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (t_body_acc_xyz and t_gravity_acc_xyz) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (t_body_acc_jerk_xyz and t_body_gyro_jerk_xyz). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (t_body_acc_mag, t_gravity_acc_mag, t_body_acc_jerk_mag, t_body_gyro_mag, t_body_gyro_jerk_mag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing f_body_acc_xyz, f_body_acc_jerk_xyz etc. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'_xyz' is used to denote 3-axial signals in the X, Y and Z directions.

### Abbreviations

Abbreviations | Description
------------- | -----------
body | body acceleration signals
gravity | gravity acceleration signals
acc | the accelerometer raw signals
gyro | the gyroscope 3-axial raw signals
jerk | the Jerk signals
mag | the magnitude of the three-dimensional signals
mean | the mean value
std | the standard deviation
x,y,z | the 3-axial
t | time domain signals
f | frequency domain signals

### Mesurements of tidy data

* t_body_acc_mean_x
* t_body_acc_mean_y
* t_body_acc_mean_z
* t_body_acc_std_x
* t_body_acc_std_y
* t_body_acc_std_z
* t_gravity_acc_mean_x
* t_gravity_acc_mean_y
* t_gravity_acc_mean_z
* t_gravity_acc_std_x
* t_gravity_acc_std_y
* t_gravity_acc_std_z
* t_body_acc_jerk_mean_x
* t_body_acc_jerk_mean_y
* t_body_acc_jerk_mean_z
* t_body_acc_jerk_std_x
* t_body_acc_jerk_std_y
* t_body_acc_jerk_std_z
* t_body_gyro_mean_x
* t_body_gyro_mean_y
* t_body_gyro_mean_z
* t_body_gyro_std_x
* t_body_gyro_std_y
* t_body_gyro_std_z
* t_body_gyro_jerk_mean_x
* t_body_gyro_jerk_mean_y
* t_body_gyro_jerk_mean_z
* t_body_gyro_jerk_std_x
* t_body_gyro_jerk_std_y
* t_body_gyro_jerk_std_z
* t_body_acc_mag_mean
* t_body_acc_mag_std
* t_gravity_acc_mag_mean
* t_gravity_acc_mag_std
* t_body_acc_jerk_mag_mean
* t_body_acc_jerk_mag_std
* t_body_gyro_mag_mean
* t_body_gyro_mag_std
* t_body_gyro_jerk_mag_mean
* t_body_gyro_jerk_mag_std
* f_body_acc_mean_x
* f_body_acc_mean_y
* f_body_acc_mean_z
* f_body_acc_std_x
* f_body_acc_std_y
* f_body_acc_std_z
* f_body_acc_jerk_mean_x
* f_body_acc_jerk_mean_y
* f_body_acc_jerk_mean_z
* f_body_acc_jerk_std_x
* f_body_acc_jerk_std_y
* f_body_acc_jerk_std_z
* f_body_gyro_mean_x
* f_body_gyro_mean_y
* f_body_gyro_mean_z
* f_body_gyro_std_x
* f_body_gyro_std_y
* f_body_gyro_std_z
* f_body_acc_mag_mean
* f_body_acc_mag_std
* f_body_body_acc_jerk_mag_mean
* f_body_body_acc_jerk_mag_std
* f_body_body_gyro_mag_mean
* f_body_body_gyro_mag_std
* f_body_body_gyro_jerk_mag_mean
* f_body_body_gyro_jerk_mag_std