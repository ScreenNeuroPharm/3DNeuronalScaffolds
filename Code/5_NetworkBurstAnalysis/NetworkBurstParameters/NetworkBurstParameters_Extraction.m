clear all
clc 

[data_name] = uigetdir(pwd,'Select the PeakTrain_Joint folder');
cd(data_name);
p = dir; 
cd(p(3).name);
pp = dir; 
load(pp(3).name);
fs=10000;
acq_time=length(peak_train)/fs/60;     %minutes
cd ../..

[path_name] = uigetdir(pwd,'Select the NetworkBurstDetectionFiles folder');
cd(path_name);
d = dir;


for k = 3:length(d)
    if isempty((strfind(d(k).name, 'parameters')))
        load(d(k).name);
        MNBR(k-2) = length(netBursts)/acq_time;
        NBD(k-2) = mean(netBursts(:,4)./fs);  % In secondi (s)
        NB_Parameters = [MNBR, NBD]; 
    end
end
