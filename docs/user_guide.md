# WRF-Fire Usage Guide

This guide describes how to run WRF-Fire simulations on Lengau.

## Basic Workflow

1. Set up the environment
2. Prepare input data
3. Configure the simulation
4. Run the simulation
5. Analyze the results

## Setting Up the Environment
```bash
module load chpc/earth/wrf-fire/4.2.2
```

## Preparing Input Data

### For Idealized Cases

Idealized cases don't require external data. You only need to configure the namelist.input file.

### For Real Data Cases

1. Obtain meteorological data (e.g., GFS, ERA5)
2. Obtain land use and topography data
3. Run WPS to prepare the data for WRF

#### Running WPS

```bash
# Create a working directory
mkdir -p ~/wrf_simulation/wps
cd ~/wrf_simulation/wps

# Copy and edit namelist.wps
cp $WPS_DIR/namelist.wps.template namelist.wps

# Edit namelist.wps for your domain and time period
# Run geogrid
geogrid.exe

# Link meteorological data
./link_grib.csh /path/to/grib/files

# Set up Vtable
./link_grib.csh /path/to/grib/files

# Run ungrib
ungrib.exe

# Run metgrid
metgrid.exe
```

## Configuring the Simulation

Edit namelist.input to set up your simulation parameters:
```bash
# Create a working directory
mkdir -p ~/wrf_simulation/run
cd ~/wrf_simulation/run

# Copy and edit namelist.input
cp $WRF_DIR/run/namelist.input .
```

## Edit namelist.input for your simulation
### Fire-specific Configuration

To enable fire modeling, add or modify the &fire section in namelist.input:
```bash
&fire
ifire = 2, ! 0=no fire, 1=SFIRE, 2=SFIRE with atmospheric feedback
fire_fuel_read = 2, ! 0= use fire_fuel_cat, 1= by altitude, 2=read from file
fire_fuel_cat = 3, ! fuel category if fire_fuel_read=0
fire_print_msg = 1, ! 1 to print fire debugging messages
fire_dt = 0.5, ! fire model time step (s)
fire_wind_height = 6.096, ! height of mid-flame wind (m)
fire_topo_from_atm = 1, ! 0 = fire mesh topo set from input, 1 = from atmosphere
fire_atm_feedback = 1, ! 0 = no feedback, 1 = feedback from fire to atmosphere
fire_grows_only = 1, ! 0 = fire can die out, 1 = can only grow
/

## Running the Simulation

### For Idealized Cases

# Run the ideal case initialization
ideal.exe

# Run the WRF model
wrf.exe

### For Real Data Cases

# Run real.exe to create initial and boundary conditions
real.exe

# Run the WRF model
wrf.exe
```



