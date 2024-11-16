# Usando a imagem do nginx com alpine
FROM nginx:alpine

# Copiar todos os arquivos HTML, CSS e JavaScript para o diretório padrão do Nginx
COPY html /usr/share/nginx/html

# Expor a porta 8080, pois é a padrão que seu JavaScript utiliza para o backend
EXPOSE 8080

# Definir o comando padrão para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]