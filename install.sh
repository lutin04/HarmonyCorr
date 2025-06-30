#!/bin/bash

echo "📦 Installation de HarmonyCore..."

python3 -m venv harmony_env
source harmony_env/bin/activate

pip install transformers torch

echo "✅ Installation terminée. Lancez : python ethical_ai.py"
