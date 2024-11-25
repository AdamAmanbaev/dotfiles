eval "$(conda shell.bash hook)"
conda create --name ml -y
conda activate ml
conda install pytorch -y
conda install conda-forge::transformers -y
conda deactivate ml
