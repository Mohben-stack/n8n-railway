FROM n8nio/n8n:latest

# Imagem oficial n8n é mínima (sem apk/apt-get) - usar como está
# Configurar timezone
ENV TZ=Europe/Paris

# Expor porta
EXPOSE 5678

# Comando padrão - baseado no template oficial Railway
CMD ["start"]
