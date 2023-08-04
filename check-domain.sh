#! usr/bin/env bash
set -ex
docker service ls -q | xargs docker inspect | jq -r '.[].Spec.Labels[]' | grep "Host" | uniq | grep -oP '(?<=Host\(\`)(.+?)(?=\`\))'