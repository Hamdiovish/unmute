FROM yanwk/comfyui-boot:cu130-slim

# --------------------
# Cache locations (standardized)
# --------------------
ENV HF_HOME=/root/.cache/huggingface \
    TRANSFORMERS_CACHE=/root/.cache/huggingface \
    HUGGINGFACE_HUB_CACHE=/root/.cache/huggingface \
    VLLM_CACHE_DIR=/root/.cache/vllm \
    VLLM_PORT=8000

# --------------------
# Runtime metadata
# --------------------
EXPOSE ${VLLM_PORT}

# --------------------
# Entrypoint
# --------------------
ENTRYPOINT ["uv", "tool", "run", "vllm@v0.15.0", "serve"]
