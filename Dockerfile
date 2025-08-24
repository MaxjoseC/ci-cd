# Imagen base de Python
FROM python:3.11-slim

# Crear carpeta de la app
WORKDIR /app

# Copiar requirements e instalar dependencias
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el código
COPY . .

# Exponer puerto
EXPOSE 5000

# Comando de inicio
CMD ["python", "app.py"]
