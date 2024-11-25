eval "$(conda shell.bash hook)"
conda config --add channels conda-forge
conda config --set channel_priority strict
conda create -n sage sage python=3.12 -y
