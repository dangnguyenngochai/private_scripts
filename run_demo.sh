#! /usr/bin/bash

HF_token="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";

echo "Cloning MiniGPT4-video ...";

git clone https://github.com/dangnguyenngochai/MiniGPT4-video.git;
cd MiniGPT4-video;

echo "Done";

echo "Creating Conda environment...";

conda env create -f environment.yml;
source activate minigpt4_video;

echo "Done";

echo "Downloading MetaAi llama model";

git clone https://dangnguyenngochai:$HF_token@huggingface.co/Vision-CAIR/MiniGPT4-Video;

echo "Done";

echo "Login to hugging face...";

huggingface-cli login --token $HF_token;

echo "Done";

echo "Start gradio demo...";

python minigpt4_video_demo.py --ckpt MiniGPT4-Video/checkpoints/video_llama_checkpoint_last.pth --cfg-path test_configs/llama2_test_config.yaml;
