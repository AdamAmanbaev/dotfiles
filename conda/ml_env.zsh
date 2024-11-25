eval "$(conda shell.bash hook)"
conda create --name ml
conda activate ml
conda install pytorch
conda deactivate ml
