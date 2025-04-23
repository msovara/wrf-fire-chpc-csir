# 🔥 WRF-Fire on Lengau

This repository provides documentation and scripts for building, installing, and running WRF-Fire on the Lengau HPC system at the CHPC.

## 🌐 Overview

WRF-Fire is a coupled atmosphere-fire model for simulating wildland fire behaviour. It combines the Weather Research and Forecasting (WRF) model with a fire spread model to simulate the interaction between fire and atmosphere.

## 🚀 Quick Start

1. Load the WRF-Fire module:
   ```bash
   module load chpc/earth/wrf-fire/4.2.2
   ```

2. Create a working directory:
```bash
  mkdir -p ~/lustre/wrf_fire_simulation
  cd ~/lustre/wrf_fire_simulation
```

3. Copy template files:
   ```bash
   cp $WRF_DIR/run/namelist.input .
   cp $WPS_DIR/namelist.wps .
   ```

4. Edit the namelist files for your simulation ✏️

5. Submit your job:
   ```bash
   qsub job_script.pbs
   ```

## 📚 Documentation

- ⚙️ [Installation Guide](docs/installation.md) - How to build and install WRF-Fire
- 📖 [Usage Guide](docs/user_guide.md) - How to run WRF-Fire simulations
- 📜 [Sample PBS Job Script](docs/sample_job_script.pbs) - Example simulations with step-by-step instructions
- 📊 [Sample Analysis Python Script](docs/sample_analysis.py) - Common issues and solutions
- 🚧 [Example Cases- Under Development](docs/example_cases.md) - Tips for optimizing performance

## 💻 System Information

WRF-Fire is installed on Lengau at:
```bash
/home/apps/chpc/earth/WRF-Fire-4.2.2
```

📬 Contact
For support, please open a GitHub issue or contact CHPC support: https://users.chpc.ac.za/helpdesk/tickets/submit/
