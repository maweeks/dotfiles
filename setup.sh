#!/bin/bash

extensions=("alexkrechik.cucumberautocomplete"\
            "ChakrounAnas.turbo-console-log"\
            "CoenraadS.bracket-pair-colorizer-2"\
            "DavidAnson.vscode-markdownlint"\
            "donjayamanne.githistory"\
            "eamodio.gitlens"\
            "ecmel.vscode-html-css"\
            "EditorConfig.EditorConfig"\
            "eriklynd.json-tools"\
            "esbenp.prettier-vscode"\
            "formulahendry.auto-rename-tag"\
            "hoovercj.ruby-linter"\
            "mauve.terraform"\
            "ms-python.python"\
            "msjsdiag.debugger-for-chrome"\
            "oderwat.indent-rainbow"\
            "rebornix.ruby"\
            "ritwickdey.LiveServer"\
            "shardulm94.trailing-spaces"\
            "shd101wyy.markdown-preview-enhanced"\
            "sidneys1.gitconfig"\
            "streetsidesoftware.code-spell-checker"\
            "waderyan.gitblame")

if [[ $(code --help) ]]; then
  echo "VSCode command line installed, installing extensions."
  for i in "${extensions[@]}"
  do
    code --install-extension $i
  done

  installed=$(code --list-extensions)
  for i in "${extensions[@]}"
  do
    if [[ ! $installed =~ $i ]]; then
      echo "Extension not installed: $i"
    fi
  done
fi
