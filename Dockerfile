FROM node:20-alpine AS build
WORKDIR /app

ARG VITE_API_VENTA_BASE_URL
ARG VITE_API_DESPACHO_BASE_URL
ENV VITE_API_VENTA_BASE_URL=$VITE_API_VENTA_BASE_URL
ENV VITE_API_DESPACHO_BASE_URL=$VITE_API_DESPACHO_BASE_URL


COPY package*.json ./
RUN npm ci

COPY . .
RUN npm run build

FROM nginx:alpine
WORKDIR /usr/share/nginx/html

RUN rm -rf ./*

COPY --from=build /app/dist . 

RUN touch /var/run/nginx.pid && \
    chown -R nginx:nginx /var/run/nginx.pid /var/cache/nginx /var/log/nginx /usr/share/nginx/html

USER nginx

# Exponer el puerto estándar de Nginx
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
