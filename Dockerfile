# Usa una imagen base con Java Runtime Environment (JRE)
# Para Minecraft 1.21.x, se recomienda Java 21 (o superior)
FROM eclipse-temurin:21-jre-jammy

# Define el directorio de trabajo dentro del contenedor
WORKDIR /minecraft

# Copia todos los archivos del servidor al contenedor
# Esto asume que el Dockerfile está en el mismo nivel que la carpeta 'server'
COPY server /minecraft

# Expone el puerto por defecto de Minecraft (25565)
EXPOSE 25565

# Define el comando que se ejecuta al iniciar el contenedor
# Asegúrate de que este comando coincide con lo que tienes en tu start.bat,
# pero adaptado para ejecutarse directamente.
# La flag -nogui es importante para entornos sin interfaz gráfica.
CMD ["java", "-Xmx4G", "-Xms1G", "-jar", "server.jar", "nogui"]

# Nota:
# -Xmx4G y -Xms1G son ejemplos. Ajusta la RAM según tu necesidad y recursos del host.
# `-Xmx` es la memoria máxima, `-Xms` la memoria inicial.