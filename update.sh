#!/bin/bash
git pull
git submodule update --init --recursive --remote
git submodule foreach --recursive 'git checkout main && git pull'

