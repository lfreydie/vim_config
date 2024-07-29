#!/bin/bash
git clone git@github.com:lfreydie/vim_config.git /tmp/dockervim
cd /tmp/dockervim
docker build -t myimgnvim .
cat <<'EOF' >> ~/.zshrc
alias nvi='docker run -it -v $PWD:/root/projet myimgnvim /root/entrypoint.sh'
alias eoc='/tmp/dockervim/remove.sh'
EOF
source ~/.zshrc

