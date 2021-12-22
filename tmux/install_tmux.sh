#!/bin/bash

# Install Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

cp .tmux.conf ~
cp yank /usr/local/bin/

echo "Press prefix + I (capital i, as in Install) to fetch the plugin."
