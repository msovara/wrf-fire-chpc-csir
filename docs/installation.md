# WRF-Fire Installation Guide

This guide describes how to build and install WRF-Fire on the Lengau HPC system.

## Prerequisites

- Access to Lengau HPC system
- Intel compilers and MPI
- NetCDF, HDF5, and other dependencies

## Using the Pre-installed Version

WRF-Fire is already installed on Lengau. To use it:
```bash
module load chpc/earth/wrf-fire/4.2.2
```

## Building from Source

If you need to build your own version of WRF-Fire, follow these steps:

### 1. Set up the environment
```bash
module load chpc/parallel_studio_xe/18.0.2/2018.2.046
```
