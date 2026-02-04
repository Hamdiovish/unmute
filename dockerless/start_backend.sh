#!/bin/bash
set -ex
cd "$(dirname "$0")/.."

export UV_VENV_CLEAR=1
uv venv
source .venv/bin/activate

pip3 install uvicorn fastapi pydub uv

uv run uvicorn unmute.main_websocket:app --reload --host 0.0.0.0 --port 8000 --ws-per-message-deflate=false
