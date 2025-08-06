# 1. Base leve com Nginx
FROM nginx:alpine

# 2. Remove conteúdo default do Nginx (opcional)
RUN rm -rf /usr/share/nginx/html/*

# 3. Copia todo o site para a pasta servida pelo Nginx
COPY . /usr/share/nginx/html/

EXPOSE 80

# 5. Comando default para rodar o Nginx em primeiro plano

CMD ["nginx", "-g", "daemon off;"]
