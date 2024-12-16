K_CENTER=2
K_REFINE=3
K_SKIP=3
MASK_MODE=res


INPUT_SIZE=256
NAME=slbr_v1
TEST_DIR=/home/vuthede/site-projects/code/WDNet/dataset/CLWD/test/samples1
# TEST_DIR=/home/vuthede/site-projects/code/WDNet/dataset/CLWD/test/real_test

python3  test_custom.py \
  --name ${NAME} \
  --nets slbr \
  --models slbr \
  --input-size ${INPUT_SIZE} \
  --crop_size ${INPUT_SIZE} \
  --test-batch 1 \
  --evaluate\
  --preprocess resize \
  --no_flip \
  --mask_mode ${MASK_MODE} \
  --k_center ${K_CENTER} \
  --use_refine \
  --k_refine ${K_REFINE} \
  --k_skip_stage ${K_SKIP} \
  --resume model_best.pth.tar \
  --test_dir ${TEST_DIR} 
  
