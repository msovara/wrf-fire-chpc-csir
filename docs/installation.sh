# WRF-Fire Installation Guide

This guide describes how to build and install WRF-Fire on the Lengau HPC system.

## Prerequisites

- Access to the Lengau HPC system
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

### 2. Download the source code and dependencies
```bash
mkdir -p ~/lustre/SoftwareBuilds/WRF-Fire
cd ~/lustre/SoftwareBuilds/WRF-Fire
./scripts/download_deps.sh
```

### 3. Build WRF-Fire
```bash
./scripts/build_wrf_fire.sh
```

### 4. Build WPS
```bash
./scripts/build_wps.sh
```


### 5. Install system-wide (optional, requires permissions)
```bash
./scripts/install_system.sh
```

## Detailed Build Process

For a detailed explanation of the build process, configuration options, etc, please send a helpdesk ticket to https://users.chpc.ac.za/helpdesk/tickets/submit/





