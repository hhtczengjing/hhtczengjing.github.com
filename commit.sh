#! /bin/bash

#提交源码到Github
rm -rf _site
git add .
git commit -m "update at `date` "

git remote add origin git@github.com:hhtczengjing/MyBlogSourceCode.git >> /dev/null 2>&1
echo "### Pushing Source to Github..."
git push origin master -f
echo "### Done"

#提交编译后的代码到Github
jekyll clean
jekyll build
cd _site

git init
git add .
git commit -m "update at `date` "

git remote add origin git@github.com:hhtczengjing/hhtczengjing.github.com.git >> /dev/null 2>&1
echo "### Pushing Source to Github..."
git push origin master -f
echo "### Done"
