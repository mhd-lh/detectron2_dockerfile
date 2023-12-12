FROM nvcr.io/nvidia/pytorch:22.07-py3
ARG DEBIAN_FRONTEND=noninteractive
WORKDIR "/workspace"
RUN git clone https://github.com/mhd-lh/detectron2_modified.git
RUN python -m pip install -e detectron2_modified
WORKDIR "/workspace/detectron2_modified/projects/DensePose"
RUN pip install av>=8.0.3 scipy>=1.5.4
RUN pip install opencv-contrib-python==4.5.5.62
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y
RUN mkdir ./image_in
RUN wget https://dl.fbaipublicfiles.com/densepose/densepose_rcnn_R_50_FPN_s1x/165712039/model_final_162be9.pkl