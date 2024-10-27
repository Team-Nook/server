#!/bin/bash

echo "--------------- 배포 시작 ---------------"
docker stop girin-server || true
docker rm girin-server || true
docker pull 058264467328.dkr.ecr.ap-northeast-2.amazonaws.com/girin-server:latest
docker run -d --name girin-server -p 8080:8080 058264467328.dkr.ecr.ap-northeast-2.amazonaws.com/girin-server:latest
echo "--------------- 배포 완료 ---------------"