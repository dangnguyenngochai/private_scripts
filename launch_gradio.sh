#! /usr/bin/bash

cd  MiniGPT4-video;
source activate minigpt4_video;
python minigpt4_video_demo.py --ckpt MiniGPT4-Video/checkpoints/video_llama_checkpoint_last.pth --cfg-path test_configs/llama2_test_config.yaml --gradio_port 2411;
