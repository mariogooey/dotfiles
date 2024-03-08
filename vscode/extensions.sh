#!/bin/bash

# Generated with terminal command:
# code --list-extensions

# Completely remove extensions
# ---------------
# For Windows
# rmdir %USERPROFILE%\.vscode\extensions /s
# For Linux
# rm -rf ~/.vscode/extensions

# Extensions
# ---------------

# Productivity
code --install-extension alefragnani.bookmarks --force
code --install-extension ms-vsliveshare.vsliveshare --force

# Customisation
code --install-extension monokai.theme-monokai-pro-vscode --force
code --install-extension pkief.material-icon-theme --force
code --install-extension pkief.material-product-icons --force

# Remote
code --install-extension ms-vscode-remote.remote-containers --force
code --install-extension ms-vscode-remote.remote-ssh --force
code --install-extension ms-vscode-remote.remote-ssh-edit --force
code --install-extension ms-vscode-remote.remote-wsl --force
code --install-extension ms-vscode.remote-explorer --force
code --install-extension ms-vscode.remote-server --force
code --install-extension ms-vscode-remote.vscode-remote-extensionpack --force

# Git
code --install-extension eamodio.gitlens --force
code --install-extension mhutchie.git-graph --force

# C
code --install-extension ms-vscode.cmake-tools --force
code --install-extension ms-vscode.cpptools --force
code --install-extension ms-vscode.cpptools-extension-pack --force
code --install-extension ms-vscode.cpptools-themes --force
code --install-extension twxs.cmake --force

# Python
code --install-extension ms-python.black-formatter --force
code --install-extension ms-python.debugpy --force
code --install-extension ms-python.flake8 --force
code --install-extension ms-python.isort --force
code --install-extension ms-python.mypy-type-checker --force
code --install-extension ms-python.pylint --force
code --install-extension ms-python.python --force
code --install-extension ms-python.vscode-pylance --force

# HDL
code --install-extension eirikpre.systemverilog --force
code --install-extension mshr-h.veriloghdl --force

# MATLAB
code --install-extension mathworks.language-matlab --force

# Makefile
code --install-extension ms-vscode.makefile-tools --force
