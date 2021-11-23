#!/bin/bash

# STYLE='\033[0;31m'
STYLE='\033[1m\033[92m'
NC='\033[0m' # No Color
function checkmods() {
  find . -name "node_modules" -type d -prune -print | xargs du -chs
}

function removemods(){
  find . -name 'node_modules' -type d -prune -print -exec rm -rf '{}' \;
}

function cowip(){
  npx cowsay $(npx internal-ip -4)
}

function qrip(){
  npx internal-ip -4
  echo ""
  npx qrcode "http://$(npx internal-ip -4)"
}

function work(){
  clear
  code -r . 
  open http://localhost:3000
  yarn dev 
}

function x (){
  exit
}

function share(){
  echo "Sharing http://$(internal-ip -4):3000 via AirDrop..."
  terminal-share -service airdrop -url "http://$(internal-ip -4):3000"
}

function devip(){
  while getopts 'pq' flag; do
    case "${flag}" in
    p) use_port=true ;;
    q) use_qr=true ;;
    *)
      print_usage
      exit 1
      ;;
    esac
  done

  if [ "$use_port" = "true" ]
  then
    
    echo "Your local IP is https://$(internal-ip -4):3000"
    if [ "$use_qr" = "true" ]
    then
      npx qrcode "http://$(internal-ip -4):3000"
    fi
  else
    echo "Your local IP is $(internal-ip -4)"
  fi
}


function md() {
  mkdir -p "$1" && sleep 2 && cd "$1"
}

function localip() {
  function _localip() { echo "📶  "$(ipconfig getifaddr "$1"); }
  export -f _localip
  local purple="\x1B\[35m" reset="\x1B\[m"
  networksetup -listallhardwareports |
    sed -r "s/Hardware Port: (.*)/${purple}\1${reset}/g" |
    sed -r "s/Device: (en.*)$/_localip \1/e" |
    sed -r "s/Ethernet Address:/📘 /g" |
    sed -r "s/(VLAN Configurations)|==*//g"
}