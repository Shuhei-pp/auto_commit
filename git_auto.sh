#!/bin/sh

# macはechoが-nが効かないので
/bin/echo -n "コミットメッセージ:" 
read COMMIT_MESSAGE

# commit_only.txtに文字追加
/bin/echo -n "追加内容:" 
read ADD_TEXT
echo $ADD_TEXT >> commit_only.txt

eval "git add ."
eval "git commit -m '$COMMIT_MESSAGE'"
eval "git push origin HEAD"