FROM nginx:alpine
ARG WEBGL_BUILD_DIR=Build/WebGL
COPY ${WEBGL_BUILD_DIR}/ /usr/share/nginx/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]
