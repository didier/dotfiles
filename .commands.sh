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
    p) use_parcel=true ;;
    q) use_qr=true ;;
    *)
      print_usage
      exit 1
      ;;
    esac
  done

  if [ "$use_parcel" = "true" ]
  then
    
    echo "Your local IP is https://$(internal-ip -4):1234"
    if [ "$use_qr" = "true" ]
    then
      npx qrcode "http://$(internal-ip -4):1234"
    fi
  else
    echo "Your local IP is $(internal-ip -4)"
  fi
}

function create() {
  # Navigate to home/projects directory
  cd
  cd Projects/commands

  # Check for flags
  while getopts 'png' flag; do
    case "${flag}" in
    p) use_parcel=true ;;
    n) use_node=true ;;
    g) use_git=true ;;
    *)
      print_usage
      exit 1
      ;;
    esac
  done

  mkdir $1
  cd $1

  # code .

  if [ $use_git = true ]
  then
    echo 'Git is innit bruv'
    hub init -g
    hub create -d "$1" -o
  fi

  if [ $use_node = true ]
  then
    echo 'Imma use Node bruv'
    npm init -y
    curl -o .gitignore https://raw.githubusercontent.com/github/gitignore/master/Node.gitignore
  elif [ -z $use_node ]
  then
    echo 'Imma do my own thang'
    touch .gitignore
    echo '.cache' >>.gitignore
    echo '.DS_Store' >>.gitignore
  fi

  if [ $use_parcel = true ]
  then
    echo 'Imma use parcel bruv'
    echo 'dist/' >>.gitignore
    code index.html js/app.js
    parcel index.html
  fi

  if [ $use_git = true ]
  then
    gg c "So, it begins."
    gg p
  fi

  # TODO: Create description or README argument/flag
  echo 'Created '$1'!'

}

function init() {
  if [ -z $1 ]; then
    echo "You need to enter a directory, mate."
    # say -v Veena "I have 1 ting, 2 say, 16 words, 4 you! Heddo my nyem is Kyle and I yem width da IRS and I tink yor come peooter has a virus!"

  elif [ -n $1 ]; then
    echo -e "${STYLE}Initializing" "'$1'""...${NC}"
    echo
    mkdir "$1"
    cd $1
    echo -e "🔮  ${STYLE}Creating files and folders...${NC}"
    echo
    mkdir assets js sass assets/images
    touch js/app.js sass/style.sass index.html
    title = $1
    echo '<!DOCTYPE html>
	<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>' >>index.html

    echo $1 >>index.html
    echo '</title>
		<link rel="stylesheet" href="sass/style.sass">
	</head>
	<body>
			<script src="js/app.js"></script>
	</body>
        </html>' >>index.html
    # echo "Created js/index.js, sass/style.sass and index.html."
    echo -e "🔥  ${STYLE}Done.${NC}"
    echo
    # echo "ls"
    # echo "$(ls)"
    code -r . index.html sass/style.sass js/app.js
    echo -e "📦  ${STYLE}Running Parcel...${NC}"
    sleep 2
    open http://localhost:1234
    parcel index.html
  fi
}

function run() {
  if [ -z $1 ]; then
    echo "You need to enter a directory, mate."
    # say -v veena "I have 1 ting, 2 say, 16 words, 4 you! Heddo my nyem is Kyle and I yem width da IRS and I tink yor come peooter has a virus\!"

  elif [ -n $1 ]; then
    echo -e "${STYLE}Opening" "'$1'""...${NC}"
    echo
    cd $1
    # echo "ls"
    # echo "$(ls)"
    code -r . index.html sass/style.sass js/app.js
    echo -e "📦  ${STYLE}Running Parcel...${NC}"
    sleep 2
    open http://localhost:1234
    parcel index.html
  fi
}

function md() {
  mkdir -p "$1" && cd "$1"
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

function init-tw(){
  if [ -z $1 ]; then
    echo "You need to enter a directory, mate."
    # say -v Veena "I have 1 ting, 2 say, 16 words, 4 you! Heddo my nyem is Kyle and I yem width da IRS and I tink yor come peooter has a virus!"

  elif [ -n $1 ]; then
    echo -e "${STYLE}Initializing" "'$1'""...${NC}"
    echo
    echo -e "🔮  ${STYLE}Creating files and folders...${NC}"
    git clone https://github.com/didiercatz/tailwindcss-parcel-boilerplate.git "$1"
    cd $1
    code .
    npm i
    npm run dev
  fi
}
