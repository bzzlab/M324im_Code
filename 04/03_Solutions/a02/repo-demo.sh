#!/usr/bin/bash
<<'###'
# Attention:
# Change CRLF (Windows) to LF (Unix on AWS) in your Editor
#
# This script start dockerd and jenkins in the container
###
ROOT="/c/Data/Development/wp_appi-repo"
# source root
SRC=${ROOT}/M324_Code_Solutions
# destination root
DES=${ROOT}/M324_trafficlight-api-demo
# final source
SRC_PATH=${SRC}/04/03_Solutions/a02/your-repo
# final destination which is the local repo!!
DES_PATH=${DES}

REMOTE_REPO="https://github.com/bzzlab/M324_trafficlight-api-demo.git"

function checkDir() {
    local DIR=$1
    if [ ! -d ${DIR} ]
    then
      echo ${DIR} does not exist!
      exit 1
    fi
}

function initLocal() {
  git init
  git add .
  git commit -m "Initial M324_trafficlight-api-demo"
  git branch -M main
  git remote add origin ${REMOTE_REPO}
  git push -u origin main
}


# function for starting docker in running container
function updateLocal {
  clear
  checkDir ${DES_PATH}
  declare -a fileArray=("Dockerfile" ".gitignore" "backend")
  fileArray+=("Jenkinsfile1" "Readme.md")
  for file in "${fileArray[@]}"
  do
      echo "-----------------------------"
      echo "copy file ${file}"
      echo "from ${SRC_PATH}"
      echo "to ${DES_PATH}"
      if [[ ${file} = "backend" ]]
      then
        if [ -d ${DES_PATH}/${file} ]; then
          rm -rf ${DES_PATH}/${file}
        fi
        cp -r ${SRC_PATH}/${file} ${DES_PATH}
      else
        if [ -f ${DES_PATH}/${file} ]; then
          rm ${DES_PATH}/${file}
        fi
        cp ${SRC_PATH}/${file} ${DES_PATH}/${file}
      fi
  done
}

# function for starting jenkins in running container
function showLocal {
  clear
  checkDir ${DES_PATH}
  cd ${DES_PATH}
  # shellcheck disable=SC2164
  ls -al #??
  # curl shows html code of repo
  # which are floods terminal with unnecessary infos
  # curl -L ${REMOTE_REPO}
  git status
}

# Read users action
while read -p "Demo repo (update [l]ocal, [s]how local, [q]uit) : " action  #??
do
action=$(echo $action | tr '[A-Z]' '[a-z]') #??
echo "Your Request : $action" #??
case $action in #??
  l | local )  #??
    echo "Update local repo ${DES_PATH} ..."; #??
    updateLocal #??
    ;; #??
  s | show )  #??
    echo "Show local repo ${DES_PATH} ..."; #??
    showLocal
    ;; #??
  q | * )  #??
    echo "quit script ..."; #??
    exit 0
    ;; #??
  *) echo "Incorrect action entered!" #??
  ;; #??
esac #??
done


