#!/bin/bash
set -ex
cd "$(dirname "$0")/.."

export UV_VENV_CLEAR=1
uv venv
source .venv/bin/activate

pip3 install uvicorn fastapi pydub uv

uv tool run vllm@v0.15.0 serve \
  --model=meta-llama/Llama-3.2-1B-Instruct \
  --max-model-len=8192 \
  --dtype=bfloat16 \
  --gpu-memory-utilization=0.3 \
  --port=8091
  # --model=google/gemma-3-1b-it \
  # --model=meta-llama/Llama-3.2-1B-Instruct \
  # --model=Qwen/Qwen3-0.6B \
