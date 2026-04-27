#!/usr/bin/env bash
set -e

echo "Starting llama-server..."
echo "Model: $MODEL_PATH"
echo "Context size: $CTX_SIZE"
echo "GPU layers: $N_GPU_LAYERS"

exec llama-server \
  -m "$MODEL_PATH" \
  --host 0.0.0.0 \
  --port 8000 \
  --ctx-size "$CTX_SIZE" \
  --n-gpu-layers "$N_GPU_LAYERS"