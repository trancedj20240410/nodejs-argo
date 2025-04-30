FROM node:slim

WORKDIR /app

COPY . .

EXPOSE 30000

RUN apt update -y &&\
    apt install -y curl wget unzip &&\
    chmod +x index.js &&\
    npm install 
    
CMD ["node", "index.js"]
