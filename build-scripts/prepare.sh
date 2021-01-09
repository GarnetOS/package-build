#!/bin/bash
dhclient -r	
dhclient
sleep 5
wget https://gist.githubusercontent.com/radimkohout/b7e7d6160b9b281fb2a823b8c883e507/raw/8ed455316e9d62a2d42a36186ee231c6d1b944f7/install_deps
mv install_deps /bin
