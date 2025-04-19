#!/bin/bash

# 2.html から 10.html までのファイルに noindex タグを追加
for i in {2..10}; do
  # 各ファイルの <meta name="viewport"> 行の後に noindex タグを挿入
  sed -i '' '/<meta name="viewport"/a\
    <meta name="robots" content="noindex, nofollow">\
    <meta name="googlebot" content="noindex, nofollow">' "$i.html"
  echo "Added noindex tags to $i.html"
done

echo "Completed adding noindex tags to all HTML files."
