#!/bin/sh
set -e
echo "[LAUNCHER] pulling private engine..."
rm -rf /app/eng
git clone --depth 1 https://x-access-token:${GH_TOKEN}@github.com/learnbase1122-hub/farm-x /app/eng
cd /app/eng
pip install --no-cache-dir -r requirements.txt
echo "[LAUNCHER] starting engine..."
exec python Main.py
