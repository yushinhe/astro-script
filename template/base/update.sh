#!/bin/sh
git co yarn.lock
git pull origin master
yarn
yarn astro build