FROM node:16

WORKDIR /app

COPY package.json ./

# RUN apt-get update \
  # && apt-get install -y curl \
  # && curl -sL https://deb.nodesource.com/setup_12.x | bash - \
  # && apt-get install -y nodejs

RUN npm install
RUN npm install --location=global json-server

COPY . .

RUN npm run build

EXPOSE 8080
EXPOSE 4000

# ENTRYPOINT ["json-server", "--port", "4000", "--host", "0.0.0.0"]
CMD ["npm", "run", "serve"]
CMD ["json-server", "--watch", "db.json", "--port", "4000", "--host", "0.0.0.0"]