FROM nginx:latest
RUN echo "Serving $BRANCH-$BUILD_ID" > /usr/share/nginx/html/index.html
EXPOSE 80
STOPSIGNAL SIGTERM
CMD ["nginx", "-g", "daemon off;"]
