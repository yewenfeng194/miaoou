#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
# cd .vitepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'
git config --global user.email "1941342487@qq.com"
git config --global user.name "yewenfeng"
git push --force git@github.com:yewenfeng194/miaoou.git master

cd -

# sh deploy.sh