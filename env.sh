#!/usr/bin/env bash

# The directory where the script is
%set_env LVSR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# For PyFST
if [ -n "$KALDI_ROOT" ];
then
    %set_env LD_LIBRARY_PATH=$KALDI_ROOT/tools/openfst/lib:$LD_LIBRARY_PATH
fi

%set_env BLOCKS_CONFIG=$LVSR/config/blocks.yaml
%set_env THEANORC=$LVSR/config/theano.rc:$HOME/.theanorc

%set_env PYTHONPATH=$LVSR:$PYTHONPATH
%set_env PATH=$LVSR/bin:$PATH
