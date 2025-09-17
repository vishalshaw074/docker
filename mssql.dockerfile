# Use the official Microsoft SQL Server 2022 image
FROM mcr.microsoft.com/mssql/server:2022-latest

# Expose SQL Server port
EXPOSE 1433

# Start SQL Server
CMD ["/opt/mssql/bin/sqlservr"]

# SECURITY NOTE:
# Do NOT include your SA_PASSWORD in this Dockerfile.
# Pass SA_PASSWORD as an environment variable at runtime.