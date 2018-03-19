FROM node:8-alpine

EXPOSE 8888

CMD ["node", "/app/app.js"]

COPY src /app
