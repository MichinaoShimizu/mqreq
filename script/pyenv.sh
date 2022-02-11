#!/bin/sh

brew install pyenv
{
    echo "export PYENV_ROOT=\"$HOME/.pyenv\""
    echo "export PATH=\"$PYENV_ROOT/bin:$PATH\""
    echo "eval \"$(pyenv init -)\""
} >> ~/.bash_profile
pyenv install 3.10.2
pyenv install 3.9.10
pyenv install 3.8.12
pyenv install 3.7.12
pyenv local 3.9.10
{
    echo 3.10.2
    echo 3.9.10
    echo 3.8.12
    echo 3.7.12
} > .python-version
