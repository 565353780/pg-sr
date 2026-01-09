DATA_FOLDER=$HOME/chLi/Dataset/GS/haizei_1/
ITERATIONS=30000

CUDA_VISIBLE_DEVICES=3 \
  python train.py \
  -s ${DATA_FOLDER}/gs/ \
  -m ${DATA_FOLDER}/pgsr/ \
  --iterations ${ITERATIONS} \
  --max_abs_split_points 0 \
  --opacity_cull_threshold 0.05 \
  -r 1

python render.py \
  -m ${DATA_FOLDER}/pgsr/ \
  --iteration ${ITERATIONS} \
  --max_depth 10.0 \
  --voxel_size 0.002 \
  --use_depth_filter \
  --skip_test
