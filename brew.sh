#!/bin/bash -e
if [[ "$OSTYPE" == "darwin"* ]]; then
    which -s brew
    if [[ $? != 0 ]] ; then
        echo 'Install Homebrew start'
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
        echo 'Install Homebrew done'
    else
        echo 'Updating Homebrew start'
        brew update
        echo 'updating Homebrew done'
    fi
else
echo `Sorry, I am not supporting this {$OSTYPE}`
fi