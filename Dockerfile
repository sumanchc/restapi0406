FROM node
RUN  npm install -y express
RUN npm install -y body-parser
COPY data.json /node/data.json
COPY node.js /node/node.js
RUN chmod +X /node/node.js
EXPOSE 9000
CMD node /node/node.js
