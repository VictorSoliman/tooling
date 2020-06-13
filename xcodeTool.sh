#!/bin/bash -e
if [[ "$OSTYPE" == "darwin"* ]]; then
    if type xcode-select >&- && xpath=$( xcode-select --print-path ) && test -d "${xpath}" && test -x "${xpath}" ; then
       echo 'Xcode commmand tool is correctly installed'
    else
       echo 'Installing x-code command tool'
       xcode-select --install
    fi
else
echo `Sorry, I am not supporting this {$OSTYPE}`
fi