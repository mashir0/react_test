FROM node:16.13.1-alpine

RUN apk update      && \
#   apk --no-cache add \
#       curl    \
#       fish    \
#       git     \
#       sudo    \
#       vim     \
#       yarn    \
#       wget && \ 
    npm install -g npm

#RUN curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

WORKDIR /work/front
COPY    . . 

RUN npm install  

EXPOSE 3000
CMD ["/bin/ash"]
