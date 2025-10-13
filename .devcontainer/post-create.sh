#!/bin/sh

apt update && apt install -y pandoc

# Install Nodejs
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

\. "$HOME/.nvm/nvm.sh"

nvm install 22

echo "Node version $(node -v)"

curl -LsSf https://astral.sh/uv/install.sh | sh

START="$(date)"

pip install --upgrade pip
pip install chromadb pypandoc
pip install transformers datasets evaluate rouge_score loralib peft 
pip install ipykernel ipywidgets 
pip install langchain-community sentence-transformers unstructured
pip install diffusers accelerate scipy safetensors
pip install torch torchdata torchvision
pip install smolagents openai
pip install nbconvert[webpdf]
pip huggingface_hub[hf_xet]
pip install unstructured 
pip install pandas networkx openpyxl
pip install python-magic python-pptx
pip install docx2txt docx msoffcrypto-tool
pip install jq nltk
pip install duckduckgo_search ddgs
pip install pypdf pymupdf Pillow
pip install fastmcp[cli]
 
echo "Preloads..."
python3 .devcontainer/preload.py

echo "+++ Start time: ${START}"
echo "+++ End time: $(date)"
