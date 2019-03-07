FROM node:8.11.4

RUN useradd --user-group --create-home --shell /bin/false app &&\
  npm install --global npm@6.4.1 && npm install --global nodemon

ENV HOME=/home/app

RUN chown -R app:app $HOME

USER app
WORKDIR $HOME/chat

CMD ["bash"]
