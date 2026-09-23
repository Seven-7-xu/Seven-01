#!/bin/bash
# 一键保存、提交、推送到 github + cnb origin
echo "===== 开始提交代码 ====="
git add .
read -p "请输入本次提交备注：" msg
git commit -m "$msg"
echo "推送至 GitHub..."
git push github main
echo "推送至 CNB仓库..."
git push origin main --force
echo "===== 全部推送完成 ====="