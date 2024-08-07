@echo off
:: 设置项目目录
set PROJECT_DIR=E:\CodeField\Project\SWAlbert-0.github.io

:: 进入项目目录
cd /d %PROJECT_DIR%

echo 更新 Hexo 数据
hexo bangumis -u

echo 正在执行Git commit和push操作...
git status

echo 添加所有修改的文件到暂存区...
git add .

echo 提交修改到本地仓库...
git commit -m "Auto-update bangumis data"

echo 推送修改到远程仓库GitHub
git push

echo 更新并推送完成！
pause

