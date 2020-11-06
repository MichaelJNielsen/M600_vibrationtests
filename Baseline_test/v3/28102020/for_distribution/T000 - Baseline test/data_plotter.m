% Run each section separately to see the different sets of data.
% Start by running this section first and then run whatever section you want to examine.
clc
clear all
close all

R = readtable('/home/wc18ny/Desktop/test.csv');

%--------------------------------------------------------------------------
%% Vicon analysis:
%% time and header
%
close all
figure()
hold on
plot(R.time_since_start,R.vicon_sequence)
title('Vicon Sequence')
movegui([4000,1000])

figure()
hold on
plot(R.time_since_start,R.vicon_sequence)
xlim([9 9.2])
title('Vicon Sequence - Zoom')
movegui([4000,300])

figure()
hold on
plot(R.time_since_start,R.vicon_time_stamp)
title('Vicon Time Stamp')
movegui([3300,1000])

figure()
hold on
plot(R.time_since_start,R.vicon_time_stamp)
xlim([9 10])
title('Vicon Time Stamp - Zoom')
movegui([3300,300])

%% Position
%
close all
figure()
hold on
plot(R.time_since_start,R.vicon_translation_x)
plot(R.time_since_start,R.vicon_translation_y)
plot(R.time_since_start,R.vicon_translation_z)
title('Vicon position vs time')
movegui([3300,800])

figure()
hold on
plot(R.vicon_translation_x,R.vicon_translation_y)
title('Vicon position seen from above')
movegui([4000,800])


%% Translation
%
close all
figure()
hold on
plot(R.time_since_start,R.vicon_rotation_x)
plot(R.time_since_start,R.vicon_rotation_y)
plot(R.time_since_start,R.vicon_rotation_z)
title('Quaternion x,y and z')
movegui([3300,1000])

figure()
hold on
plot(R.time_since_start,R.vicon_rotation_w)
title('Quaternion w')
movegui([3300,300])
%--------------------------------------------------------------------------


%% Razor IMU analysis
%% Time and header
% 
close all
figure()
hold on
plot(R.time_since_start,R.int_imu_time_stamp)
title('Internal imu time stamp')
movegui([3300,1000])

figure()
hold on
plot(R.time_since_start,R.int_imu_time_stamp)
xlim([9 9.2])
title('Internal imu time stamp zoom')
movegui([3300,0])

figure()
hold on
plot(R.time_since_start,R.ext_imu_time_stamp)
title('External imu time stamp')
movegui([4000,1000])

figure()
hold on
plot(R.time_since_start,R.ext_imu_time_stamp)
title('External imu time stamp zoom')
xlim([9 9.5])
movegui([4000,0])

%% Accelerometer
% 
close all
figure()
hold on
plot(R.time_since_start,R.int_imu_acc_x)
plot(R.time_since_start,R.int_imu_acc_y)
plot(R.time_since_start,R.int_imu_acc_z)
title('internal imu x,y and z')
movegui([3300,1000])

figure()
hold on
plot(R.time_since_start,R.int_imu_acc_x)
plot(R.time_since_start,R.int_imu_acc_y)
plot(R.time_since_start,R.int_imu_acc_z)
title('internal imu x,y and z - Zoom')
xlim([60 100])
movegui([3300,0])

figure()
hold on
plot(R.time_since_start,R.ext_imu_acc_x)
plot(R.time_since_start,R.ext_imu_acc_y)
plot(R.time_since_start,R.ext_imu_acc_z)
title('external imu x,y and z')
movegui([4000,1000])

figure()
hold on
plot(R.time_since_start,R.ext_imu_acc_x)
plot(R.time_since_start,R.ext_imu_acc_y)
plot(R.time_since_start,R.ext_imu_acc_z)
title('external imu x,y and z - Zoom')
xlim([60 100])
movegui([4000,0])

%% Gyro
% 
close all
figure()
hold on
plot(R.time_since_start,R.int_imu_gyro_x)
plot(R.time_since_start,R.int_imu_gyro_y)
plot(R.time_since_start,R.int_imu_gyro_z)
title('internal gyro x,y and z')
movegui([3300,1000])

figure()
hold on
plot(R.time_since_start,R.ext_imu_gyro_x)
plot(R.time_since_start,R.ext_imu_gyro_y)
plot(R.time_since_start,R.ext_imu_gyro_z)
title('external gyro x,y and z')
movegui([4000,1000])

%% Magnetometer
% 
close all
figure()
hold on
plot(R.time_since_start,R.int_imu_mag_x)
plot(R.time_since_start,R.int_imu_mag_y)
plot(R.time_since_start,R.int_imu_mag_z)
title('internal magnetometer x,y and z')
movegui([3300,1000])

figure()
hold on
plot(R.time_since_start,R.ext_imu_mag_x)
plot(R.time_since_start,R.ext_imu_mag_y)
plot(R.time_since_start,R.ext_imu_mag_z)
title('external magnetometer x,y and z')
movegui([4000,1000])

%--------------------------------------------------------------------------
%% DJI IMU analysis
%% Time and header
%
close all
figure()
hold on
plot(R.time_since_start,R.dji_imu_sequence)
title('DJI Sequence')
movegui([4000,1000])

figure()
hold on
plot(R.time_since_start,R.dji_imu_sequence)
title('DJI Sequence - Zoom')
xlim([9 9.2])
movegui([4000,300])

figure()
hold on
plot(R.time_since_start,R.dji_imu_time_stamp)
title('DJI time stamp')
movegui([3300,1000])

figure()
hold on
plot(R.time_since_start,R.dji_imu_time_stamp)
xlim([9 10])
title('DJI time stamp - Zoom')
movegui([3300,300])

%% Orientation
%
close all
figure()
hold on
plot(R.time_since_start,R.dji_imu_orientation_x)
plot(R.time_since_start,R.dji_imu_orientation_y)
plot(R.time_since_start,R.dji_imu_orientation_z)
title('DJI imu orientation x,y and z')
movegui([3300,1000])

figure()
hold on
plot(R.time_since_start,R.dji_imu_orientation_w)
title('DJI imu orientation w')
movegui([3300,300])

%% Angular velocity
%
close all
figure()
hold on
plot(R.time_since_start,R.dji_imu_ang_vel_x)
plot(R.time_since_start,R.dji_imu_ang_vel_y)
plot(R.time_since_start,R.dji_imu_ang_vel_z)
title('DJI imu angular velocity')
movegui([3300,1000])

%% linear acceleration
%
close all
figure()
hold on
plot(R.time_since_start,R.dji_imu_lin_acc_x)
plot(R.time_since_start,R.dji_imu_lin_acc_y)
plot(R.time_since_start,R.dji_imu_lin_acc_z)
title('DJI imu linear acceleration')
movegui([3300,1000])

%--------------------------------------------------------------------------
%% RC analysis
% 
close all
figure()
hold on
plot(R.rc_roll, R.rc_pitch)
title('Roll and pitch')
movegui([4000,1000])

figure()
hold on
plot(R.rc_yaw, R.rc_throttle)
title('yaw and throttle')
movegui([3250,1000])

figure()
hold on
plot(R.time_since_start, R.rc_throttle)
title('Throttle over time')
movegui([2600,300])

figure()
hold on
plot(R.time_since_start, R.rc_yaw)
title('Yaw over time')
movegui([3250,300])

figure()
hold on
plot(R.time_since_start, R.rc_roll)
title('Roll over time')
movegui([3900,300])

figure()
hold on
plot(R.time_since_start, R.rc_pitch)
title('Pitch over time')
movegui([4550,300])







