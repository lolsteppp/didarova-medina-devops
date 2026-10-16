# Base image - small Linux distribution
FROM alpine:3.20

# Working directory inside the container
WORKDIR /app

# Copy application and student info into the image
COPY app/ /app/
COPY Didarova_Medina_info.txt /app/

# Make scripts executable
RUN chmod +x /app/app.sh /app/test.sh

# Default environment variables (can be overridden with -e)
ENV STUDENT_NAME=Medina \
    STUDENT_SURNAME=Didarova \
    STUDENT_GROUP=IT2-2313 \
    STUDENT_ID=37944

# Port the application would use
EXPOSE 8080

# Command executed when the container starts
CMD ["sh", "/app/app.sh"]
