#!/usr/bin/env bash

# The directory where the script is
%env LVSR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# For PyFST
if [ -n "$KALDI_ROOT" ];
then
    %env LD_LIBRARY_PATH=$KALDI_ROOT/tools/openfst/lib:$LD_LIBRARY_PATH
fi

%env BLOCKS_CONFIG=$LVSR/config/blocks.yaml
%env THEANORC=$LVSR/config/theano.rc:$HOME/.theanorc

%env PYTHONPATH=$LVSR:$PYTHONPATH
%env PATH=$LVSR/bin:$PATH
