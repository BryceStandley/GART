conda remove -n gart --all -y
conda create -n gart python=3.9 -y

conda activate gart

conda install pytorch torchvision torchaudio cpuonly -c pytorch -y

conda install -c fvcore -c iopath -c conda-forge fvcore iopath -y

pip install "git+https://github.com/facebookresearch/pytorch3d.git"

pip install -r requirements.txt

pip install lib_render/simple-knn
pip install lib_render/diff_gaussian_rasterization-alphadep
pip install -e lib_guidance/mvdream/extern/MVDream

pip install lpips