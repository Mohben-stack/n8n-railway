FROM n8nio/n8n:latest

# Instalar dependências extras (imagem n8n atual é Debian-based; usa apt-get)
USER root
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    python3-pip \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

USER node

# Configurar timezone
ENV TZ=America/Sao_Paulo

# Expor porta
EXPOSE 5678

# Comando padrão - baseado no template oficial Railway
CMD ["start"]
