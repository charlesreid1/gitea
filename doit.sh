#!/bin/bash

eval "$(goenv init -)"

TAGS="bindata sqlite" make generate build
sudo chown git:staff gitea
sudo cp gitea /www/gitea/bin/gitea

