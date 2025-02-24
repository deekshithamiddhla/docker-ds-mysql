FROM mysql:latest

# Set environment variables (Change these if needed)
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=data_science_db
ENV MYSQL_USER=ds_user
ENV MYSQL_PASSWORD=ds_password

# Copy initialization script
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the default MySQL port
EXPOSE 3306
