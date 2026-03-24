FROM node:10-stretch

LABEL maintainer="Appsecco"

WORKDIR /app
COPY . .

RUN sed -i 's/\r$//' /app/entrypoint.sh /app/wait-for-it.sh \
    && chmod +x /app/entrypoint.sh /app/wait-for-it.sh \
    && npm install

EXPOSE 9090

ENTRYPOINT ["/app/entrypoint.sh"]