#!/bin/sh

printf "\e[93mInstalling extensions for vscode:\e[39m\n"

EXTENSIONS="$(cat $1)"

for LINE in $EXTENSIONS
do
  printf "%b%s%b\n" "\e[44m" "$LINE" "\e[49m"
  code --install-extension "$LINE"
  printf "\n"
done

printf "\e[93mDone.\e[39m\n"
