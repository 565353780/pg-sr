cd ..
git clone --depth 1 https://github.com/facebookresearch/pytorch3d.git

pip install ninja

pip3 install torch torchvision torchaudio \
  --index-url https://download.pytorch.org/whl/cu128

pip install open3d plyfile opencv-python lpips trimesh tensorboard

cd pytorch3d
python setup.py install

cd ../pg-sr/submodules/diff-plane-rasterization
python setup.py install

cd ../simple-knn
python setup.py install
