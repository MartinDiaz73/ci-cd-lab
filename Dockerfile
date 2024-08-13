FROM python:latest

# Crear un directorio de trabajo
RUN mkdir /app

# Establecer el directorio de trabajo
WORKDIR /app

# Copiar el contenido del contexto de construcción al contenedor
ADD . /app/

# Instalar las dependencias especificadas en requirements.txt
RUN pip install -r requirements.txt

# Exponer el puerto en el que la aplicación escuchará
EXPOSE 5000

# Comando para ejecutar la aplicación Flask
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]
