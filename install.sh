#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${DIR}
cp pyScript.sh ~/Library/LaunchAgents
cp joker.plist ~/Library/LaunchAgents
cp MouseTools ~/Library/LaunchAgents
