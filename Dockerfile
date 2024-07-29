FROM archlinux:latest

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm neovim ripgrep curl git
RUN mkdir -p /root/.config/nvim
RUN curl -fLo /root/.local/share/nvim/site/autoload/plug.vim --create-dirs     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
COPY ./init.vim /root/.config/nvim/init.vim

RUN chmod 777 /root/.config/nvim/init.vim
COPY ./entrypoint.sh /root/entrypoint.sh
RUN chmod 777 /root/entrypoint.sh
