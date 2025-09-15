FROM ubuntu:24.04

ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US:en
ENV LC_ALL=en_US.UTF-8
ENV TZ=Asia/Ho_Chi_Minh

WORKDIR /opt/installer

ADD ./installer/base .
RUN ./base

ADD ./installer/c-stack .
RUN ./c-stack

ADD ./installer/zsh-stack .
RUN ./zsh-stack

ADD ./installer/nodejs-stack .
RUN ./nodejs-stack

ADD ./installer/python-stack .
RUN ./python-stack

ADD ./installer/rust-stack .
RUN ./rust-stack

ADD ./installer/neovim .
RUN ./neovim

ADD ./installer/kube-stack .
RUN ./kube-stack

ADD ./installer/container-stack .
RUN ./container-stack

ADD ./installer/toy .
RUN ./toy

ADD config/nvim /root/.config/nvim
ADD zshrc /root/.zshrc
ADD gitconfig /root/.gitconfig

WORKDIR /root

USER root

ENTRYPOINT ["/bin/bash", "-c"]
