#!/bin/bash

brew bundle dump --describe --force --no-lock --file="${XDG_CONFIG_HOME}/brew/Brewfile"
