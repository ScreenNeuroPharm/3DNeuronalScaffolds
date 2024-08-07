# 3DNeuronalScaffolds

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/ScreenNeuroPharm/3DNeuronalScaffolds/blob/master/LICENSE)

> The repository contains the data and the functions needed to reproduce the analysis reported in the article "Electrophysiological features of cortical 3D networks are deeply modulated by scaffold properties"

## Details
The Data folder contains the peak trains extracted from the electrophysiological recordings divided by configuration. To reproduce our analysis, it is necessary to convert the ```.txt``` format file to ```.mat``` format file using the function ```TxT2Mat.m``` in the Conversion folder. ```TxT2Mat.m``` function allows obtaining for each electrode (60) the peak train .mat file. Peak_train file is a sparse vector that reports the spike occur.  All recordings were sampled at 10 KHz. 

The Code folder contains the Matlab code necessary for the analysis. All uploaded scripts for the analyses work with a .mat format in Matlab. 

### Code folder architecture:
- Conversion folder:
    * Txt2Mat: function to convert ```.txt``` format file in ```.mat``` format file
      
- DefineCompartmentsMap
    * ConfirmCompartmentsMap_4Q: Function to define the ColorElectrodefile needed in some of the following analysis

- SpikeAnalysis folder:
    * MFR: function to compute the Mean Firing Rate
      
- BurstAnalysis folder:
    * burstFeaturesAnalysis: functions to obtain the burst features
    * StringMethod: functions to detect the burst
    * BurstParameters: burst parameters extraction, analysis, and classification

- NetworkBurstAnalysis folder: 
    * IBEi: functions to extract the Inter Burst Event interval (threshold used to detect the Network Burst)
    * NetBurstDetection: functions for the Network Burst Detection
    * NetworkBurstParameters: functions for the extraction of the NB parameters.
    * NBPropagation: function to analyze the Network Propagation

- NetworkBurstAnalysis folder: functions necessary to study the amplitudes

- Utilities folder: supplementary functions
