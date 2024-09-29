conda remove -n gart --all -y
conda create -n gart python=3.9 -y

conda activate gart

which python
which pip

#conda install pytorch==2.0.0 torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia -y
conda install pytorch torchvision torchaudio cpuonly -c pytorch

# FORCE_CUDA=1 pip install "git+https://github.com/facebookresearch/pytorch3d.git" #
conda install -c fvcore -c iopath -c conda-forge fvcore iopath -y

pip install "git+https://github.com/facebookresearch/pytorch3d.git"

pip install -r requirements.txt

pip install lib_render/simple-knn
pip install lib_render/diff_gaussian_rasterization-alphadep
# git clone https://github.com/bytedance/MVDream lib_guidance/mvdream/extern/MVDream
pip install -e lib_guidance/mvdream/extern/MVDream

# cd lib_marchingcubes
# python setup.py build_ext --inplace
# python setup_c.py build_ext --inplace # for kdtree in cuda 11

pip install lpips
# pip install git+https://github.com/NVlabs/tiny-cuda-nn/@v1.6#subdirectory=bindings/torch # Not used in release version