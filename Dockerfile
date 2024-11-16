# Usando a imagem do nginx com alpine
FROM nginx:alpine

# Copiar todos os arquivos HTML, CSS e JavaScript para o diretório padrão do Nginx
COPY html /usr/share/nginx/html

# Expor a porta 3000, pois é a desejada para o acesso externo
EXPOSE 3000

# Definir o comando padrão para iniciar o Nginx
CMD ["nginx", "-g", "daemon off;"]
