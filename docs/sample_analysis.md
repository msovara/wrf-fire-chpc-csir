
## Analyzing Results

WRF-Fire outputs NetCDF files that can be analyzed using various tools:

- NCL (NCAR Command Language)
- Python with xarray/netCDF4
- VAPOR (Visualization and Analysis Platform for Ocean, Atmosphere, and Solar Researchers)
- NCView

Example Python script for basic visualization:
```python
import xarray as xr
import matplotlib.pyplot as plt

# Open the WRF output file
ds = xr.open_dataset('wrfout_d01_yyyy-mm-dd_hh:mm:ss')

# Plot fire area
plt.figure(figsize=(10, 8))
ds.FIRE_AREA[0, :, :].plot(cmap='hot')
plt.title('Fire Area')
plt.savefig('fire_area.png')
```
