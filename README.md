# detectron2_dockerfile
A dockerfile to build detectron from scratch with downloading the models.
Make sure you have a version of cmake is installed. You can either run the docker commands from the makefile, or install cmake as follows (Ubuntu 22.04):
 1.  sudo apt-add-repository 'deb https://apt.kitware.com/ubuntu/ jammy main'
 2.  sudo apt update &&  sudo apt install cmake
 
After you place the images in `/workspace/detectron2_modified/projects/DensePose/image_in` folder inside docker, run detectron from inside:

    python apply_net.py show configs/densepose_rcnn_R_50_FPN_s1x.yaml  model_final_162be9.pkl image_in dp_segm -v
OR
  
    python /workspace/detectron2_modified/projects/DensePose/apply_net.py show /workspace/detectron2_modified/projects/DensePose/configs/densepose_rcnn_R_50_FPN_s1x.yaml  /workspace/detectron2_modified/projects/DensePose/model_final_162be9.pkl /workspace/dataset/image dp_segm -v
