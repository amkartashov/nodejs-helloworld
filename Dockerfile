FROM alpine

EXPOSE 8888

COPY src /app

# https://nodejs.org/dist/v8.11.1/node-v8.11.1-linux-x64.tar.xz
ADD node-v8.11.1-linux-x64.tar.xz /

RUN apk --no-cache add libstdc++

# https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.27-r0/glibc-2.27-r0.apk
# https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.27-r0/glibc-bin-2.27-r0.apk
COPY glibc-2.27-r0.apk /
COPY glibc-bin-2.27-r0.apk /
RUN apk add --allow-untrusted /glibc-2.27-r0.apk /glibc-bin-2.27-r0.apk && rm /glibc-2.27-r0.apk /glibc-bin-2.27-r0.apk

CMD ["/node-v8.11.1-linux-x64/bin/node", "/app/app.js"]

# clean up all PATH
RUN rm -rf /usr/local/bin /usr/local/sbin /usr/sbin /usr/bin /sbin /bin
