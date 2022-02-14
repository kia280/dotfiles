#!/bin/bash

# Install Tmux Plugin Manager
echo -n "Download TPM... "
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
retVal=$?
if [ $retVal -ne 0 ]; then
    exit 1
fi
echo "Done"

# Place .tmux.conf to ~/.tmux.conf
echo -n "Install .tmux.conf... "
cp .tmux.conf ~
retVal=$?
if [ $retVal -ne 0 ]; then
    exit 1
fi
echo "Done"

# Install osc52.sh to /usr/local/bin/
# from: https://chromium.googlesource.com/apps/libapps/+/HEAD/hterm/etc/osc52.sh
echo -n "Install osc52 helper script... "
cp osc52_helper/osc52.sh /usr/local/bin/
retVal=$?
if [ $retVal -ne 0 ]; then
    exit 1
fi
echo "Done"

echo "Press prefix + I (capital i, as in Install) to fetch the plugins."