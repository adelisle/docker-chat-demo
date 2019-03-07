FROM node:4.3.2

RUN useradd --user-group --create-home --shell /bin/false app &&\
  npm install --global npm@3.7.5 && npm install --global nodemon

ENV HOME=/home/app

RUN chown -R app:app $HOME

USER app
WORKDIR $HOME/chat

CMD ["bash"]
