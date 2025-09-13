#!/bin/bash
if [ "$1" == "--install" ]; then

  python --version
  uv --version

  # ==============================
  # Install Python 3.10 + deps
  # ==============================
  apt-get update -y
  apt-get install -y python3.10 python3.10-venv python3.10-distutils python3.10-dev
  # Point python3 to Python 3.10
  sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
  sudo update-alternatives --config python3

  pip install uv==0.6.14

  python --version
  uv --version

else

  python --version
  uv --version

  cd /content/dia
  uv run app.py --share
fi