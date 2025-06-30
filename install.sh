#!/bin/bash

echo "📦 Installation de HarmonyCore..."

# Création d'un environnement virtuel (optionnel)
python3 -m venv harmony_env
source harmony_env/bin/activate

# Installation des dépendances nécessaires
pip install transformers torch

echo "✅ Installation terminée. Lancez : python ethical_ai.py"
