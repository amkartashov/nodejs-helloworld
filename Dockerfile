FROM node:8-alpine

EXPOSE 8888

CMD ["node", "/app/app.js"]

COPY src /app

# clean up all PATH except for /usr/loca/bin where node is installed
RUN rm -rf /usr/local/sbin /usr/sbin /usr/bin /sbin /bin
