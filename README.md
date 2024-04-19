# 3DNeuronalScaffolds

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/ScreenNeuroPharm/3DNeuronalScaffolds/blob/master/LICENSE)

> The repository contains the data and the functions needed to reproduce the analysis reported in the article "Electrophysiological features of cortical 3D networks are deeply modulated by scaffold properties"

## Details
The Data folder contains the peak trains extracted from the electrophysiological recordings divided by configuration. To reproduce our analysis is necessary to convert the ```.txt``` format file in ```.mat``` format file using the function ```TxT2Mat.m``` in the Conversion folder. ```TxT2Mat.m``` function allows obtaining for each electrode the peak train .mat file. Peak_train file is a sparse vector that reports the spike occur.  All recordings are sampled at 10 KHz. 

The Code folder comprehends the python and matlab code code necessary for the analysis. All uploaded scripts for the analyses work with a .mat format in Matlab or a .py format in Python. 

### Code folder architecture:
