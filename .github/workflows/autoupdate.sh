#!/bin/bash

# Rename global pre-commit config so we don't override it
mv .pre-commit-config.yaml .global.yaml

# Update each example config
for file in examples/.*.yaml; do
  echo "Updating ${file} hooks..."

  cp ${file} .pre-commit-config.yaml
  pre-commit autoupdate
  cp .pre-commit-config.yaml ${file}
done

# Restore global pre-commit config
mv -f .global.yaml .pre-commit-config.yaml
