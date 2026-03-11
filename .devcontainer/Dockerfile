# 1. prod build
FROM node:22-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci --omit=dev
COPY . .
RUN npm run build

# 2. prod runtime
FROM node:22-alpine AS runtime
WORKDIR /app
ENV NODE_ENV=production
RUN addgroup -S app && adduser -S app -G app
COPY --from=builder /app/dist ./dist
COPY --from=builder /app/package*.json ./
RUN npm ci --omit=dev
USER app
CMD ["node", "dist/main.js"]

# 3. devcontainer stage (для dev, но на основе prod)
FROM runtime AS dev
ENV NODE_ENV=development
# устанавливаем только dev‑инструменты
RUN apk add --no-cache bash git curl
# опционально: nodemon, debuggers и прочее
RUN npm install -g nodemon
CMD ["nodemon", "dist/main.js"]
