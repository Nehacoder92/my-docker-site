# Lightweight Nginx image se static site serve karta hai
FROM nginx:alpine

# Default nginx page hatao aur apni files copy karo
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

# Build:  docker build -t my-project .
# Run:    docker run -p 8080:80 my-project
# Open:   http://localhost:8080
