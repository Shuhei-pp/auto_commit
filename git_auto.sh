#!/bin/sh

# macはechoが-nが効かないので
/bin/echo -n "コミットメッセージ:" 
read COMMIT_MESSAGE

/bin/echo -n "追加内容:" 
read ADD_TEXT

eval "git add ."
eval "git commit -m '$COMMIT_MESSAGE'"
eval "git push origin HEAD"