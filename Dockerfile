# Usa uma imagem oficial do Python como base
FROM python

# Define o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o arquivo de requisitos e instale as dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie o restante do código da aplicação
COPY . /app/

# Exponha a porta que o Flask usará
EXPOSE 5000

# Comando para iniciar o Flask
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]