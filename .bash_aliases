# add sudo
if [ "$USER" != "root" ]; then
  SUDO="sudo"
fi

# cd
alias cdh='cd ~'
alias cdp='cd -'

# ls
alias lh='ls -lha'

# apt
alias apt-install="$SUDO apt update && $SUDO apt install -y"
alias apt-s="$SUDO apt-cache search"

# docker
alias d="$SUDO docker"
alias dr="$SUDO docker run --rm -it"
alias db="$SUDO docker build"
alias de="$SUDO docker exec -it"
alias dp="$SUDO docker ps"

# docker-compose
alias dcu="$SUDO docker-compose up"
alias dcub="$SUDO docker-compose up --build"
alias dcud="$SUDO docker-compose up -d"
