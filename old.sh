#!/usr/bin/env bash

# The directory where the script is
# export LVSR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
LVSR="/content/Actor"
# For PyFST
if [ -n "$KALDI_ROOT" ];
then
    export LD_LIBRARY_PATH=$KALDI_ROOT/tools/openfst/lib:$LD_LIBRARY_PATH
fi

# export BLOCKS_CONFIG=$LVSR/config/blocks.yaml
BLOCKS_CONFIG="/content/Actor/config/blocks.yaml"

#export THEANORC=$LVSR/config/theano.rc:$HOME/.theanorc
THEANORC="/content/Actor/config/theano.rc:/content/.theanorc"

#export PYTHONPATH=$LVSR:$PYTHONPATH
import sys
sys.path.insert(1, "/content/Actor")

#export PATH=$LVSR/bin:$PATH
import os
os.environ['PATH'] += ":/content/Actor/bin"
