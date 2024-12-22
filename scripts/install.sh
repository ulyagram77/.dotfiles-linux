#!/usr/bin/env sh

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
PROJECT_DIR=$(dirname ${SCRIPT_DIR})

DOTFILES_DIR=${PROJECT_DIR}/dotfiles

cd ${DOTFILES_DIR}
stow --target=${HOME} .
