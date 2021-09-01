FROM nginx:alpine
WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY ./* ./
EXPOSE 80
HEALTHCHECK --interval=2s --timeout=5s --retries=5 CMD curl --fail http://localhost:80/ || exit 1

CMD echo "Connection Established" && nginx -g "daemon off;"
