FROM nginx:alpine
ARG WEBGL_BUILD_DIR=Build/WebGL
RUN mkdir -p /usr/share/nginx/html
COPY entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["nginx","-g","daemon off;"]
