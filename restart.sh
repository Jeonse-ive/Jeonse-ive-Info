#!/bin/bash

case "$1" in
  -f)
    echo "🧹 기존 프론트엔드 컨테이너 정리 중..."
    docker rm -f realty-react-app 2>/dev/null || true

    echo "🚀 프론트엔드 빌드 및 실행..."
    docker compose -p realty-project up --build frontend
    ;;
  -b)
    echo "🧹 기존 백엔드 컨테이너 정리 중..."
    docker compose rm -sf backend db

    echo "🚀 백엔드 빌드 및 실행..."
    docker compose up backend db
    ;;
  *)
    echo "🧹 기존 전체 컨테이너 정리 중..."
    docker compose down -v

    echo "🚀 전체 빌드 및 실행..."
    docker compose up
    ;;
esac
