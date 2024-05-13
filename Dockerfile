# Dockerfile node one
# Etapa 1: Construye la app
#FROM node:20 as builder

#RUN corepack enable && corepack prepare pnpm@latest --activate
#ENV PNPM_HOME=/usr/local/bin

#WORKDIR /usr/src/app

#COPY package.json ./
#RUN pnpm install

#COPY . .
#RUN pnpm run build

# Etapa 2: Crea una imagen mas pequeña
#FROM node:20-alpine

#WORKDIR /usr/src/app

#COPY --from=builder /usr/src/app/dist ./dist
#COPY --from=builder /usr/src/app/node_modules ./node_modules
#COPY --from=builder /usr/src/app/package*.json ./

# Expose 8888
#CMD ["node", "start"]

FROM node:20
WORKDIR /usr/src/app
COPY package*.json ./
RUN pnpm install