#!/usr/bin/env bash
# 최신 앱을 배포에 반영하고 push (폰은 새로고침만)
cd "/c/Users/taeyo/배포_윤사"
cp "/c/Users/taeyo/사상가별노트/플라톤_정복.html" ./index.html
git add -A
git commit -q -m "update ${1:-app}" 2>/dev/null || { echo "변경 없음"; exit 0; }
git push -q origin main && echo "배포됨 → https://nemarymasm.github.io/yunsa/ (1분 후 반영)"
