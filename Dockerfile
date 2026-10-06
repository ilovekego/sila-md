FROM node:20-alpine

# Install build tools and ffmpeg for media handling
RUN apk add --no-cache \
    ffmpeg \
    git \
    python3 \
    make \
    g++

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start"]
