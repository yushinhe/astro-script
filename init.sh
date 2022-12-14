#!/bin/sh

if [ $# -eq 0 ]; then
  echo 'Please input <project-name>'
  exit
fi

PROJECT_NAME=$1
BASEDIR=$(dirname "$0")

echo 'create project:' $PROJECT_NAME '...'

# === init ===
mkdir $PROJECT_NAME 


echo "# Vim\n*~\n*swp" >> $PROJECT_NAME/.gitignore
cp -rpf $BASEDIR/template/base/* $PROJECT_NAME

cp -rpf $BASEDIR/template/default_src/* $PROJECT_NAME

cd $PROJECT_NAME 
yarn init --yes
yarn add astro \
    bootstrap \
    sass \
    astro-compress \


# === git ===
git init; git add .; git commit -m 'init'

# === done ===
echo "\n\ndone!"
